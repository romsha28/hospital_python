from django.shortcuts import render, HttpResponse, redirect

from django.conf import settings
#from django.utils.safestring import mark_safe

import random

#REST-APIS
import io
from knox.views import LoginView as KnoxLoginView, APIView

from numpy import void
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from rest_framework.permissions import IsAdminUser, AllowAny, IsAuthenticated
from rest_framework.authentication import TokenAuthentication

import datetime
from datetime import datetime, date

today = date.today()
today_now = datetime.now()

#DATABEASES & FUNCTIONS
#from django.contrib.auth.models import User
from .models import V1_UserOtp as UserOtp
from apimaster.models import *
from .sitefunction import *
from . filter import *

#SERIALIZERS
from .serializers import *

from apimaster.serializers import * 


class UserLoginOtp(KnoxLoginView):
    permission_classes = [AllowAny]

    def post(self, request, format=None):
          
        json_data = JSONRenderer().render(request.data)
        stream = io.BytesIO(json_data)
        request_data = JSONParser().parse(stream)
        data = {'response':'error', 'status':400}
        tag = request.GET.get('tag','')

        try:
            user = (get_or_create_user(request_data['username']))
        except:
            data['msg'] = 'Username Is Not Found'
            json_data = JSONRenderer().render(data)
            return HttpResponse(json_data, content_type='application/json')

        if tag == 'set-otp':
            data = setOtp(user)
        else:
            try:
                data = login_with_otp(user, request_data['otp'], request)
            except:
                data['msg'] = 'Otp Is Not Found'


        # else:
        #     print(get_ip_or_location(request))        

        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')

class UserProfileCRUD(APIView):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

    def get(self, request, format=None):
        data = {'status':404, 'response':'error', 'msg':'Failed To Create Or Get User'}
        x_profile = get_or_create_userprofile(request)
        if (x_profile == 404):
            json_data = JSONRenderer().render(data)
            return HttpResponse(json_data, content_type='application/json')  
   
        profile = UserProfiles.objects.filter(id=x_profile.id)
        srz = UserProfilesSerializer(profile, many=True)
        data['data'] = {"user":x_profile.json_display,"profile":srz.data}
        data['response'] = 'success'
        data['status'] = 200
        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')    

    def post(self, request, format=None):
        data = {'response':'error', 'status':400, 'msg':'Api Response'}

        attach_file = request.FILES.get('attach_file')
        
        if attach_file:
            request.data['attach_file'] = ''

        json_data = JSONRenderer().render(request.data)
        stream = io.BytesIO(json_data)
        request_data = JSONParser().parse(stream)

        if attach_file:
            request_data['photo'] = attach_file

        update_profile = UserProfiles.objects.get(user=request.user)
        form = UserProfilesSerializer(update_profile, data=request_data)


        # try:
        #     form.is_valid(raise_exception=True)
        #     print("ok.....",form.is_valid())
        # except Exception as e:
        #     print(e)    

        try:
            user_profile = UserProfiles.objects.get(user=request.user)
        except:
            user_profile = UserProfiles(user=request.user)    
            user_profile.save()

        try:
            if user_profile.user.first_name != request_data['name']:
                user_profile.user.first_name = request_data['name']
                
        except:
            pass        

        try:
            if user_profile.user.email != request_data['email']:
                user_profile.user.email = request_data['email']
                
        except:
            pass

        user_profile.user.save()    

            

        if form.is_valid():
            try:
                form.save()
                data['response'] = 'success'
                data['status'] = 200
                data['msg'] = "Successfully Update..."
            except Exception as e:
                data['msg'] = f"{e}"
                  
        else:
            data['msg'] = f"Form Not Valid"
            

        profile = UserProfiles.objects.filter(user=request.user)
        srz = UserProfileSrz(profile, many=True)
        data['data'] = {"user":update_profile.json_display,"profile":srz.data}
        

        #PARTIAL UPDATE CUSTOM FUNCTIOn TO API
        # update_profile = get_or_update_userprofile(request, request_data)
        # profile = UserProfiles.objects.filter(id=update_profile['profile'].id)
        # srz = UserProfileSrz(profile, many=True)
        # data['data'] = {"user":update_profile['profile'].json_display,"profile":srz.data}
        # data['response'] = update_profile['response']
        # data['status'] = update_profile['status']
        # data['msg'] = update_profile['msg']

        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')


#Filter Doctor
class DoctorsApiView(APIView):
    #authentication_classes = [TokenAuthentication]
    permission_classes = [AllowAny]

    def get(self, request, format=None):
        filter_data = FilterDoctorProfile(request)
        filter_data['data'] = UserProfilesSerializer(filter_data['data'], many=True).data

        filter_data['info'] = {'test':'oky'}

        json_data = JSONRenderer().render(filter_data)
        return HttpResponse(json_data, content_type='application/json')

    def post(self, request, format=None):
        data = {}

        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')    

    def put(self, request, format=None):
        data = {}

        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')

    def delete(self, request, format=None):
        data = {}

        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')    

class DoctorsProfileApi(APIView):
    permission_classes = [AllowAny]

    def get(self, request, id):
        
        try:
            filter_data = UserProfiles.objects.filter(id=int(id), occupation='doctor')
            user_data = UserProfiles.objects.get(id=int(id), occupation='doctor')
        except:
            filter_data = None
            json_data = JSONRenderer().render({"status":400, "message":"Id Is Not Found!", "data":{}})
            return HttpResponse(json_data, content_type='application/json')

        doctor = UserProfilesSerializer(filter_data, many=True).data   

        clinic = UsersClinics.objects.filter(user=user_data.user)
        clinic_srz = UsersClinicSerializer(clinic, many=True).data

        council = UsersRegistrationCouncils.objects.filter(user=user_data.user)
        council_srz = DoctorCouncilSerializer(council, many=True).data


        education = UsersEducations.objects.filter(user=user_data.user)
        education_srz = UsersEducationSerializer(education, many=True).data

        identityProof = UsersIdentityProofs.objects.filter(user=user_data.user)
        id_srz = UsersIdentityProofSerializer(identityProof, many=True).data

        registration = MedicalRegistrationProofs.objects.filter(user=user_data.user)
        registration_srz = MedicalRegistrationProofSerializer(registration, many=True).data

        establish = EstablishmentProofs.objects.filter(user=user_data.user)
        establish_srz = EstablishmentProofsSerializer(establish, many=True).data

        mapLocation = MapLocations.objects.filter(user_id=user_data.id)
        map_srz = MapLocationsSerializer(mapLocation, many=True).data

        consultationFee = ConsultationFees.objects.filter(user_id=user_data.id) 

        consult_srz = ConsultationFeesSerializer(consultationFee, many=True).data

        data = {
                    'data': {
                        "doctor":doctor,
                        "user":user_data.json_display,

                        "treatmentdata": {
                            "id": 1,
                            "name": "General Medicine",
                            "description": "General Medicine",
                            "primary_image": "/media/treatments/livercontent_hEXgOAC.png",
                        },


                        'hosiptal': clinic_srz,


                        'expertise': {
                            'id':1,
                            'name':'General Physician',
                        },
                        'reviews': [
                            {
                                'id':1,
                                'review':'good service',
                                'rate':4.1,
                                'appointment_id':44,
                                'doctor_id':44,
                                'user_id':1,
                                'created_at':"2021-06-05 11:06:10",
                                'updated_at':"2021-06-05 11:06:10",
                                'user': {
                                    'name':'Anshu g',
                                    'image':"/media/profile_photo/user.png",
                                    'fullImage':"/media/profile_photo/user.png",
                                },
                            },
                            {
                                'id':2,
                                'review':'good service',
                                'rate':4.1,
                                'appointment_id':44,
                                'doctor_id':44,
                                'user_id':1,
                                'created_at':"2021-06-05 11:06:10",
                                'updated_at':"2021-06-05 11:06:10",
                                'user': {
                                    'name':'Anshu g',
                                    'image':"/media/profile_photo/user.png",
                                    'fullImage':"/media/profile_photo/user.png",
                                },
                            },
                            {
                                'id':3,
                                'review':'good service',
                                'rate':4.1,
                                'appointment_id':44,
                                'doctor_id':44,
                                'user_id':1,
                                'created_at':"2021-06-05 11:06:10",
                                'updated_at':"2021-06-05 11:06:10",
                                'user': {
                                    'name':'Anshu g',
                                    'image':"/media/profile_photo/user.png",
                                    'fullImage':"/media/profile_photo/user.png",
                                },
                            },
                        ],
                        
                        'council_detail': council_srz,
                        
                        'education_detail': education_srz,
                        
                        'clinic_detail': clinic_srz,
                        
                        'identity_proof_detail': id_srz,

                        'registration_detail': registration_srz,
                        'establishment_detail': establish_srz,
                        'maplocations_detail': map_srz,

                        'consultationfee_detail': consult_srz,
                    },
                    
                    "recommended_doctors": [

                    {
                        "id": 1,
                        "name": "dash kamal",
                        "mobile": "9846584616",
                        "email": "dashkamal@mailinator.com",
                        "photo": "/media/profile_photo/image_Wn6BFli.png",
                        "sex": "male",
                        "dob": "2021-11-10",
                        "occupation": "doctor",
                        "about": "",
                        "work_experience": None,
                        "description": "update base64 image 2021-12-29 15:58:18",
                        "specialties": None,
                        "specialty_id": 1,
                        "language": None,
                        "blood_group": "",
                        "locality": "",
                        "address": "noida",
                        "address2": "",
                        "city": "",
                        "state": "",
                        "country": "",
                        "pincode": None,
                        "latitude_coordinate": "",
                        "longitude_coordinate": "",
                        "verification": 1,
                        "verification_text": "Aprooved",
                        "created_by": None,
                        "created_at": "2021-11-29T17:49:31.472602+05:30",
                        "status": True,
                        "treatmentdata": [
                            {
                                "id": 1,
                                "name": "General Medicine",
                                "description": "General Medicine",
                                "primary_image": "/media/treatments/livercontent_hEXgOAC.png"
                            }
                        ]
                    },
                    {
                        "id": 19,
                        "name": "yogi4",
                        "mobile": None,
                        "email": "yogi4@mailinator.com",
                        "photo": None,
                        "sex": "male",
                        "dob": None,
                        "occupation": "doctor",
                        "about": None,
                        "work_experience": None,
                        "description": None,
                        "specialties": None,
                        "specialty_id": 1,
                        "language": None,
                        "blood_group": None,
                        "locality": None,
                        "address": None,
                        "address2": None,
                        "city": None,
                        "state": None,
                        "country": None,
                        "pincode": None,
                        "latitude_coordinate": None,
                        "longitude_coordinate": None,
                        "verification": 1,
                        "verification_text": "Aprooved",
                        "created_by": None,
                        "created_at": "2021-12-12T20:53:42.382056+05:30",
                        "status": True,
                        "treatmentdata": [
                            {
                                "id": 2,
                                "name": "General Surgery",
                                "description": "General Surgery",
                                "primary_image": "/media/treatments/WomanHealth.jpg"
                            }
                        ]
                    },
                    {
                        "id": 20,
                        "name": "yogi to 102",
                        "mobile": None,
                        "email": "yogi6@mailinator.com",
                        "photo": "/media/profile_photo/20723-2-mario-image_pcRTCQ0.png",
                        "sex": "male",
                        "dob": None,
                        "occupation": "doctor",
                        "about": None,
                        "work_experience": None,
                        "description": "demo description",
                        "specialties": None,
                        "specialty_id": 1,
                        "language": None,
                        "blood_group": None,
                        "locality": None,
                        "address": None,
                        "address2": None,
                        "city": None,
                        "state": None,
                        "country": None,
                        "pincode": None,
                        "latitude_coordinate": None,
                        "longitude_coordinate": None,
                        "verification": 2,
                        "verification_text": "Rejected",
                        "created_by": None,
                        "created_at": "2021-12-12T20:57:44.296325+05:30",
                        "status": False,
                        "treatmentdata": [
                            {
                                "id": 1,
                                "name": "General Medicine",
                                "description": "General Medicine",
                                "primary_image": "/media/treatments/livercontent_hEXgOAC.png"
                            },
                            {
                                "id": 2,
                                "name": "General Surgery",
                                "description": "General Surgery",
                                "primary_image": "/media/treatments/WomanHealth.jpg"
                            },
                            {
                                "id": 3,
                                "name": "Psychiatry",
                                "description": None,
                                "primary_image": None
                            },
                            {
                                "id": 4,
                                "name": "General Physician",
                                "description": None,
                                "primary_image": None
                            }
                        ]
                    },
                    {
                        "id": 31,
                        "name": "yogi to 121",
                        "mobile": None,
                        "email": None,
                        "photo": "/media/profile_photo/image_lKCsLDD.png",
                        "sex": "male",
                        "dob": None,
                        "occupation": "doctor",
                        "about": None,
                        "work_experience": None,
                        "description": "update base64 image 2022-01-21 12:19:08",
                        "specialties": None,
                        "specialty_id": None,
                        "language": "['ab', 'en']",
                        "blood_group": None,
                        "locality": None,
                        "address": None,
                        "address2": None,
                        "city": None,
                        "state": None,
                        "country": None,
                        "pincode": None,
                        "latitude_coordinate": None,
                        "longitude_coordinate": None,
                        "verification": 0,
                        "verification_text": None,
                        "created_by": None,
                        "created_at": "2021-12-29T22:30:58.906327+05:30",
                        "status": False,
                        "treatmentdata": [
                            {
                                "id": 1,
                                "name": "General Medicine",
                                "description": "General Medicine",
                                "primary_image": "/media/treatments/livercontent_hEXgOAC.png"
                            },
                            {
                                "id": 2,
                                "name": "General Surgery",
                                "description": "General Surgery",
                                "primary_image": "/media/treatments/WomanHealth.jpg"
                            },
                            {
                                "id": 3,
                                "name": "Psychiatry",
                                "description": None,
                                "primary_image": None
                            },
                            {
                                "id": 4,
                                "name": "General Physician",
                                "description": None,
                                "primary_image": None
                            }
                        ]
                    }
                        
                        ],
                    'message': 'Details successfully get',
                    'status' : 200
                }

        json_data = JSONRenderer().render(data)
        return HttpResponse(json_data, content_type='application/json')


# class AppoimentApiView(APIView):
#     authentication_classes = [TokenAuthentication]
#     permission_classes = [IsAuthenticated]

#     def get(self, request, format=None):
#         data = {}

#         json_data = JSONRenderer().render(data)
#         return HttpResponse(json_data, content_type='application/json')














class CheckApi(KnoxLoginView):
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    def get(self, request, format=None):
        res = {}
        x_profile = get_or_create_userprofile(request)
        profile = UserProfiles.objects.filter(id=x_profile.id)
        srz = UserProfileSrz(profile, many=True)
        res['data'] = {"user":x_profile.json_display,"profile":srz.data}
        res['response'] = 'success'
        res['status'] = 200
        json_data = JSONRenderer().render(res)
        return HttpResponse(json_data, content_type='application/json')

