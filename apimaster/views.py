from django.shortcuts import render
from django.http.response import JsonResponse, json
from django.core.exceptions import PermissionDenied, ObjectDoesNotExist
from rest_framework.parsers import JSONParser
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import get_user_model
from rest_framework import status, viewsets, generics, permissions, serializers
from rest_framework.response import Response
from knox.models import AuthToken
from django.contrib.auth import authenticate, login
from rest_framework.authtoken.serializers import AuthTokenSerializer
from knox.views import LoginView as KnoxLoginView
from .serializers import *
from .models import *
from hospital.models import *
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken.models import Token
from django.views.decorators.csrf import csrf_exempt

from django.db.models import Q, F
from django.db.models import Value as V
from django.db.models.functions import Concat

import base64
from django.core.files.base import ContentFile
from datetime import date, datetime, timedelta
import datetime
from json import dumps
import json
import ast

from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import api_view, permission_classes
from rest_framework.renderers import JSONRenderer

# from geopy.geocoders import Nominatim
# import geocoder

# from .serializers import UserSerializer, RegisterSerializer, UserProfilesSerializer, DoctorCouncilSerializer, LoginSerializers
# from .models import UserProfiles
# from rest_framework import *
# from .models import *
# from .serializers import *
# from rest_framework.views import APIView
# from rest_framework.response import Response
# from apimaster.models import UserProfiles
# from apimaster.serializers import UserProfilesSerializer

# class MyAuthentication(authentication.TokenAuthentication):
#     def authenticate_credentials(self, key):
#         try:
#             token = self.model.objects.select_related('user').get(key=key)
#         except self.model.DoesNotExist:
#             return (None, '')
#         if not token.user.is_active:
#             raise exceptions.AuthenticationFailed(_('User inactive or deleted.'))
#         return (token.user, token)



@api_view(['GET'])
def getSubscriptionPlans(request):
    try:
        response = {
            "language": [
                {
                    "code": "en",
                    "name": "english"
                },
                {
                    "code": "sa",
                    "name": "Soudi Arabia"
                },
                {
                    "code": "bd",
                    "name": "Bangla"
                },
                {
                    "code": "in",
                    "name": "Hindi"
                }
            ],
            'status' : status.HTTP_200_OK
        }
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['GET'])
def getPlans(request):
    if request.method == 'GET':
        items = SubscriptionPlans.objects.all()
        if items is not None:
            data_serializer = getSubscriptionPlansSerializer(items, many=True)
            return Response({'data': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getProducts(request):
    try:
        response = {
                "data": [
                    {
                        "id": 1,
                        "name": "Covid Essentials",
                        "description": "Essentials",
                        "photo": "/media/products_photo/1.png",
                    },
                    {
                        "id": 2,
                        "name": "Medical Devices",
                        "description": "Devices",
                        "photo": "/media/products_photo/2.png",
                    },
                    {
                        "id": 3,
                        "name": "Nutrition & Fitness",
                        "description": "Nutrition & Fitness",
                        "photo": "/media/products_photo/3.png",
                    }
                ],
                "message": "get successfully!",
                "status": status.HTTP_200_OK
            }
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)


@api_view(['GET'])
def getBannerHome(request):
    try:
        response = {
                "data": [
                    {
                        "id": 1,
                        "name": "banner-1",
                        "photo": "/media/banners_photo/banner_1.png",
                    },
                    {
                        "id": 2,
                        "name": "banner-2",
                        "photo": "/media/banners_photo/banner_1.png",
                    },
                    {
                        "id": 3,
                        "name": "banner-3",
                        "photo": "/media/banners_photo/banner_1.png",
                    }
                ],
                "message": "get successfully!",
                "status": status.HTTP_200_OK
            }
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['POST'])
def postRecommendedDoctors(request):
    try:
        response = {
                "doctorslist": [
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
                "message": "get successfully!",
                "status": status.HTTP_200_OK
            }
        # 'status' : status.HTTP_200_OK
        # dataJSON = dumps(response)
        # dataJSON = json.dumps(response)
        # dataJSON = json.loads(response)
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)


@api_view(['POST'])
def postTreatmentWiseDoctorsTest(request):
    try:
        response = {
                "doctorslist": [
                    {
                        "id": 44,
                        "name": "yogi to 121",
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
                "message": "get successfully!",
                "status": status.HTTP_200_OK
            }
        # 'status' : status.HTTP_200_OK
        # dataJSON = dumps(response)
        # dataJSON = json.dumps(response)
        # dataJSON = json.loads(response)
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['POST'])
def getMultiData(reqquest):
    itm = TreatmentCategories.objects.all()
    srz = getTreatmentCategorieSerializer(itm, many=True)
    # data = {"hey":"hello world"}
    json_data = JSONRenderer().render(srz.data)
    return HttpResponse(json_data, content_type='application/json')

class getMultiDataxx(generics.ListCreateAPIView):
    def get(self, request):
        serializer_class = ParentSerializer
        queryset = Treatments.objects.all()
        return Response({'data': queryset, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)

@api_view(['POST'])
def getMultiDatax(request):
    if request.method == 'POST':
        # treatment = Treatments.objects.get(id=5)
        # treatmentcat = treatment.treatmentCategories_set.all()
        # Treatments , TreatmentCategories
        items = Treatments.objects.all()
        #items = TreatmentCategories.objects.all() 
        if items is not None:
            # getTreatmentSerializer , getTreatmentCategorieSerializer
            data_serializer = ParentSerializer(items, many=True)
            return Response({'data': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getUserLocation(request):
    # Latitude & Longitude input
    Latitude = "25.594095"
    Longitude = "85.137566"
    geolocator = Nominatim(user_agent="geoapiExercises")
    location = geolocator.reverse(Latitude+","+Longitude)
    # print(location) # Display
    # content = {'location':str(location.city),'message': 'done'}
    
    address = location.raw['address']
    print(address)
    print(address['city'])
    g = geocoder.ip('me')
    print(g.latlng)
    content = {
        "city": address.get('city', ''),
        "county": address.get('county', ''),
        "state_district": address.get('state_district', ''),
        "state": address.get('state', ''),
        "postcode": address.get('postcode'),
        "country": address.get('country', ''),
        "country_code": address.get('country_code'),
        "status":200
    }
    #return Response("done")
    #return Response({"address":address})
    return Response({"data":content})

#@csrf_exempt
@api_view(['GET'])
@permission_classes((IsAuthenticated, ))
def getHello(request):
    #permission_classes = (IsAuthenticated,)
    # permission_classes = [
    #     permissions.IsAuthenticated
    # ]
    content = {'message': 'Hello, World!'}
    return Response(content)

class HelloView(APIView):
    permission_classes = [
        permissions.IsAuthenticated
    ]
    def get(self, request):
        content = {'message': 'Hello, User!'}
        return Response(content)


@api_view(['POST','GET'])
def getLanguageConfig(request):
    try:
        response = {
            "language": {
                1:{
                    "code": "en",
                    "name": "english"
                },
                2:{
                    "code": "sa",
                    "name": "Soudi Arabia"
                },
                3:{
                    "code": "bd",
                    "name": "Bangla"
                },
                4:{
                    "code": "in",
                    "name": "Hindi"
                }
            },
            'status' : status.HTTP_200_OK
        }
        # dataJSON = dumps(response)
        # dataJSON = json.dumps(response)
        # dataJSON = json.loads(response)
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['POST'])
def getSiteConfig(request):
    try:
        response = {
            "system_default_currency": 1,
            "digital_payment": True,
            "base_urls": {
                "product_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/image/product/multiple_image",
                "product_thumbnail_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/image/product",
                "brand_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "customer_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "banner_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "category_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "review_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "seller_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "shop_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images",
                "notification_image_url": "https://brtechgeeks.in/getbuddy/getbuddy/public/admin/images"
            },
            "static_urls": {
                "contact_us": "https://brtechgeeks.in/getbuddy/getbuddy/contacts",
                "brands": "https://brtechgeeks.in/getbuddy/getbuddy/brands",
                "categories": "https://brtechgeeks.in/getbuddy/getbuddy/categories",
                "customer_account": "https://brtechgeeks.in/getbuddy/getbuddy/user-account"
            },
            "about_us": "<p>SixValley is the largest one-stop shopping destination in Bangladesh. Launched in 2021, the online store offers the widest range of products in categories ranging from electronics to household appliances, latest smart phones, Camera, Computing &amp; accessories fashion, health equipment, and makeup.</p>",
            "privacy_policy": "<p>Your Privacy Policy will be here.&nbsp;</p>",
            "faq": {
                1:{
                    "id": 1,
                    "question": "What kind of questions can I ask on IM?",
                    "answer": "Do’s\r\n\r\nAsking product-based queries\r\n\r\nAsking queries pertaining to product’s warranty, installation, etc.\r\n\r\nDont's\r\n\r\nSharing contact details\r\n\r\nUsing indecent, impolite language\r\n\r\nAsking irrelevant queries\r\n\r\nUsing IM for lodging complaints.",
                    "ranking": 1,
                    "status": 1,
                    "created_at": "2021-05-24 21:16:36",
                    "updated_at": "2021-05-24 21:16:36"
                },
                2:{
                    "id": 2,
                    "question": "What are the exciting campaigns on 6valley?",
                    "answer": "Valentines Day Campaign.\r\n\r\nBangla New Year(BNY) Campaign.\r\n\r\n11.11” Campaign.\r\n\r\nFataFati Friday Campaign.\r\n\r\n12.12” Campaign.\r\n\r\nHappy New Year Campaign.",
                    "ranking": 1,
                    "status": 1,
                    "created_at": "2021-05-24 21:17:02",
                    "updated_at": "2021-05-24 21:17:02"
                },
                3:{
                    "id": 3,
                    "question": "How do I know if my product has a warranty?",
                    "answer": "If a warranty is offered on a product, the warranty period will be displayed on the product page, to the right of the product image below “Delivery”.\r\n\r\nIf a product is sold by multiple vendors, the warranty period offered by each vendor will be displayed to the right of the page. Just click on the more information icon on the right side of the Return and Warranty tab to find the detailed warranty information.",
                    "ranking": 1,
                    "status": 1,
                    "created_at": "2021-05-24 21:17:29",
                    "updated_at": "2021-05-24 21:17:29"
                }
            },
            "terms_&_conditions": "<h1>A. Introduction:</h1><p>Welcome to SixValley</p>",
            "currency_list": {
                1:{
                    "id": 1,
                    "name": "USD",
                    "symbol": "$",
                    "code": "USD",
                    "exchange_rate": 1,
                    "status": 1,
                    "created_at": None,
                    "updated_at": "2021-06-05 11:06:10"
                },
                2:{
                    "id": 2,
                    "name": "BDT",
                    "symbol": "৳",
                    "code": "BDT",
                    "exchange_rate": 84,
                    "status": 1,
                    "created_at": None,
                    "updated_at": "2021-06-05 11:06:20"
                },
                3:{
                    "id": 3,
                    "name": "Indian Rupi",
                    "symbol": "₹",
                    "code": "INR",
                    "exchange_rate": 60,
                    "status": 1,
                    "created_at": "2020-10-15 17:23:04",
                    "updated_at": "2021-07-08 00:15:14"
                },
                4:{
                    "id": 4,
                    "name": "ZAR",
                    "symbol": "R",
                    "code": "ZAR",
                    "exchange_rate": 16,
                    "status": 1,
                    "created_at": "2021-07-08 00:14:59",
                    "updated_at": "2021-07-08 00:15:19"
                },
                5:{
                    "id": 5,
                    "name": "Ringgit",
                    "symbol": "RM",
                    "code": "MYR",
                    "exchange_rate": 4,
                    "status": 1,
                    "created_at": "2021-07-08 00:15:41",
                    "updated_at": "2021-07-08 00:21:38"
                }
            },
            "currency_symbol_position": "right",
            "maintenance_mode": False,
            "language": {
                1:{
                    "code": "en",
                    "name": "english"
                },
                2:{
                    "code": "sa",
                    "name": "Soudi Arabia"
                },
                3:{
                    "code": "bd",
                    "name": "Bangla"
                },
                4:{
                    "code": "in",
                    "name": "Hindi"
                }
            },
            "colors": {
                1:{
                    "id": 1,
                    "name": "IndianRed",
                    "code": "#CD5C5C",
                    "created_at": "2018-11-05 02:12:26",
                    "updated_at": "2018-11-05 02:12:26"
                },
                2:{
                    "id": 2,
                    "name": "LightCoral",
                    "code": "#F08080",
                    "created_at": "2018-11-05 02:12:26",
                    "updated_at": "2018-11-05 02:12:26"
                },
                3:{
                    "id": 3,
                    "name": "Salmon",
                    "code": "#FA8072",
                    "created_at": "2018-11-05 02:12:26",
                    "updated_at": "2018-11-05 02:12:26"
                },
                4:{
                    "id": 4,
                    "name": "Black",
                    "code": "#000000",
                    "created_at": "2018-11-05 02:12:30",
                    "updated_at": "2018-11-05 02:12:30"
                }
            },
            "unit": {
                1:"kg",
                2:"pc",
                3:"gms",
                4:"ltrs"
            },
            "shipping_method": "sellerwise_shipping",
            "email_verification": False,
            "phone_verification": False,
            "country_code": "BD",
            "social_login": {
                1:{
                    "login_medium": "google",
                    "status": True
                },
                2:{
                    "login_medium": "facebook",
                    "status": True
                }
            },
            "currency_model": "multi_currency",
            'message': 'Details successfully get',
            'status' : status.HTTP_200_OK
        }
        dataJSON = dumps(response)
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)



@api_view(['GET'])
def profile_list(request):
    if request.method == 'GET':
        users = UserProfiles.objects.all()
        if users:
            users_serializer = UserProfilesSerializer(users, many=True)
            return JsonResponse(users_serializer.data, safe=False)
        else:
            return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)
    return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['POST'])
def doctors_list(request):
    if request.method == 'POST':
        #specialties = request.data.get('specialties')
        items = UserProfiles.objects.filter(occupation='doctor')
        if items is not None:
            data_serializer = UserProfilesSerializer(items, many=True)
            return Response({'doctorslist': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            result = items
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def postTreatmentWiseDoctors(request):
    if request.method == 'POST':
        #specialties = request.data.get('specialties')
        items = UserProfiles.objects.filter(occupation='doctor')
        if items is not None:
            data_serializer = TreatmentWiseDoctorsSerializer(items, many=True)
            data = data_serializer.data
            data[1] = 'male'
            #data['gender'] = 'male'
            return Response({'doctorslist': data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            #return Response({'doctorslist': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getDoctorsx(request, pk):
    if request.method == 'GET':
        users = UserProfiles.objects.filter(occupation='doctor',specialty_id=pk)
        if users:
            users_serializer = UserProfilesSerializer(users, many=True)
            return JsonResponse(users_serializer.data, safe=False)
        else:
            return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)
    return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['GET','POST'])
def getDoctors(request, pk):
    try:
        #user = UserProfiles.objects.get(users_id=pk)
        user = UserProfiles.objects.get(id=pk)
        userid = user.users_id
        if user.occupation == "doctor":
            council = UsersRegistrationCouncils.objects.get(user_id=userid)
            ##################################
            educationData = UsersEducations.objects.filter(user_id=userid)
            education_detail = []
            for item in educationData:
                education_detail.append(
                    {
                        'name':item.name,
                        'univercity':item.univercity,
                        'passing_year':item.passing_year,
                        'description':item.description,
                        'from_at':"2004-08-08",
                        'to_at':"2010-08-08",
                        'status':item.status
                    }
                )
            clinicRow = UsersClinics.objects.filter(user_id=userid)
            hosiptal = []
            for clinic in clinicRow:
                hosiptal.append(
                    {
                        'id':1,
                        'name':clinic.name,
                        'city':clinic.city,
                        'address':clinic.address,
                        'pincode':clinic.pincode,
                        'latitude_coordinate':clinic.latitude_coordinate,
                        'longitude_coordinate':clinic.longitude_coordinate,
                        'from_at':clinic.from_at,
                        'to_at':clinic.to_at,
                        'hospitalgallery': [
                            {
                                'id':1,
                                'image':"/media/treatments/livercontent_hEXgOAC.png",
                                'fullImage':"/media/treatments/livercontent_hEXgOAC.png",
                            },
                            {
                                'id':2,
                                'image':"/media/treatments/livercontent_hEXgOAC.png",
                                'fullImage':"/media/treatments/livercontent_hEXgOAC.png",
                            },
                            {
                                'id':3,
                                'image':"/media/treatments/livercontent_hEXgOAC.png",
                                'fullImage':"/media/treatments/livercontent_hEXgOAC.png",
                            },
                        ]
                    }
                )
            ##################################
            
            IdentityProof = UsersIdentityProofs.objects.get(user_id=userid)
            Registration = MedicalRegistrationProofs.objects.get(user_id=userid)
            Establishment = EstablishmentProofs.objects.get(user_id=userid)
            MapLocation = MapLocations.objects.get(user_id=userid)
            ConsultationFee = ConsultationFees.objects.get(user_id=userid)
            EstablishmentTiming = EstablishmentTimings.objects.get(user_id=userid)
            response = {
                    'data': {
                        'id':user.id,
                        'name':user.name,
                        'mobile':user.mobile,
                        'email':user.email,
                        'photo':'/media/'+str(user.photo),
                        'image':"/media/profile_photo/user.png",
                        'sex':user.sex,
                        'dob':user.dob,
                        'occupation':user.occupation,
                        'title':user.title,
                        'about':user.about,
                        'work_experience':user.work_experience,
                        'amount':ConsultationFee.amount,
                        'description':user.description,
                        'specialties':user.specialties,
                        'specialty_id':user.specialty_id,
                        'language':getListVal(user.language),
                        'blood_group':user.blood_group,
                        'locality':user.locality,
                        'address':user.address,
                        'address2':user.address2,
                        'city':user.city,
                        'state':user.state,
                        'country':user.country,
                        'pincode':user.pincode,
                        'latitude_coordinate':user.latitude_coordinate,
                        'longitude_coordinate':user.longitude_coordinate,
                        'section_flag':getListVal(user.section_flag),
                        'flag_count':user.flag_count,
                        'verification':user.verification,
                        'verification_text':user.verification_text,
                        'created_by':user.created_by,
                        'status':user.status,
                        "treatmentdata": {
                            "id": 1,
                            "name": "General Medicine",
                            "description": "General Medicine",
                            "primary_image": "/media/treatments/livercontent_hEXgOAC.png",
                        },
                        'hosiptal': hosiptal,
                        'expertise': {
                            'id':1,
                            'name':'General Physician',
                        },
                        'reviews': [
                            {
                                'id':1,
                                'review':'good service',
                                'rate':5,
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
                                'review':'bed doctor',
                                'rate':0,
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
                                'rate':3,
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
                        'council_detail': {
                            'name':council.name,
                            'registration_no':council.registration_no,
                            'registration_year':council.registration_year,
                            'registration_file':str(council.file),
                            'description':council.description,
                            'status':council.status
                        },
                        'education_detail':education_detail,
                        'identity_proof_detail': {
                            'name':IdentityProof.name,
                            'file':'/media/'+str(IdentityProof.file),
                            'description':IdentityProof.description,
                            'status':IdentityProof.status
                        },
                        'registration_detail': {
                            'name':Registration.name,
                            'file':str(Registration.file),
                            'description':Registration.description,
                            'status':Registration.status
                        },
                        'establishment_detail': {
                            'name':Establishment.name,
                            'file':str(Establishment.file),
                            'description':Establishment.description,
                            'status':Establishment.status
                        },
                        'maplocations_detail': {
                            # 'name':MapLocation.name,
                            'address':MapLocation.address,
                            'city':MapLocation.city,
                            'state':MapLocation.state,
                            'country':MapLocation.country,
                            'pincode':MapLocation.pincode,
                            'latitude_coordinate':MapLocation.latitude_coordinate,
                            'longitude_coordinate':MapLocation.longitude_coordinate,
                            'description':MapLocation.description,
                            'status':MapLocation.status
                        },
                        'consultationfee_detail': {
                            # 'name':ConsultationFee.name,
                            'amount':ConsultationFee.amount,
                            'description':ConsultationFee.description,
                            'status':ConsultationFee.status
                        },
                    },
                    'message': 'Details successfully get',
                    'status' : status.HTTP_200_OK
                }
        elif user.occupation == "patient":
            return JsonResponse({'message': 'Profile does not exist'}, status=status.HTTP_404_NOT_FOUND)
        else:
            return JsonResponse({'message': 'Profile does not exist'}, status=status.HTTP_404_NOT_FOUND)
        return JsonResponse(response, status=status.HTTP_200_OK)
        #return JsonResponse({'code': 200,'message': 'successfully get!'}, status=status.HTTP_201_CREATED)
    except UserProfiles.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)





@api_view(['GET', 'POST', 'DELETE'])
def patients_list(request):
    if request.method == 'GET':
        User = get_user_model()
        users = UserProfiles.objects.filter(occupation='patient')
        if users is not None:
            result = users
        else:
            result = 'Success'
        users_serializer = UserProfilesSerializer(result, many=True)
        return JsonResponse(users_serializer.data, safe=False)

@api_view(['POST'])
def xprofileStores(request):
    if request.method == 'POST':
        obj = UserProfiles()
        obj.name = request.POST['name']
        obj.occupation = 'doctor'
        obj.email = request.POST['email']
        obj.mobile = request.POST['mobile']
        obj.sex = request.POST['sex']
        obj.address = request.POST['address']
        obj.dob = request.POST['dob']
        #obj.description = 'demo description'
        #obj.amount = Decimal(request.POST['amount'])
        obj.save()
        result = 'Success'
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    #return JsonResponse(users_serializer.data, safe=False)

@api_view(['POST'])
def xdoctorCouncilStores(request):
    if request.method == 'POST':
        obj = UsersRegistrationCouncils()
        obj.name = request.POST['name']
        obj.registration_no = 'doctor'
        obj.registration_year = request.POST['email']
        obj.description = 'demo description'
        obj.save()
        result = 'Success'
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def doctorCouncilStores(request):
    if request.method == 'POST':
        rowdata = JSONParser().parse(request)
        doctorCouncilSerializer = DoctorCouncilSerializer(data=rowdata)
        if doctorCouncilSerializer.is_valid():
            doctorCouncilSerializer.save()
            return JsonResponse(doctorCouncilSerializer.data, status=status.HTTP_201_CREATED)
        return JsonResponse(doctorCouncilSerializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def profileStores(request):
    if request.method == 'POST':
        rowdata = JSONParser().parse(request)
        profilesSerializer = UserProfilesSerializer(data=rowdata)
        if profilesSerializer.is_valid():
            profilesSerializer.save()
            return JsonResponse(profilesSerializer.data, status=status.HTTP_201_CREATED)
        return JsonResponse(profilesSerializer.errors, status=status.HTTP_400_BAD_REQUEST)

#@api_view(['GET', 'POST', 'PUT', 'DELETE'])

@api_view(['GET', 'POST'])
def profile_detail(request, pk):
    try:
        User = UserProfiles.objects.get(id=pk)
        response = {
            'name':User.name,
            'mobile':User.mobile,
            'email':User.email,
            #'photo':json.dumps(str(User.photo)),
            'photo':str(User.photo),
            'sex':User.sex,
            'dob':User.dob,
            'address':User.address,
            'message': 'get data',
            'status' : status.HTTP_200_OK
        }
        return JsonResponse(response, status=status.HTTP_200_OK)
    except User.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['GET'])
def getSpecialty(request):
    if request.method == 'GET':
        items = Treatments.objects.all()
        if items is not None:
            data_serializer = getSpecialtySerializer(items, many=True)
            return Response({'treatmentdata': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            result = items
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getHealthIssues(request):
    if request.method == 'GET':
        items = TreatmentCategories.objects.all()
        if items is not None:
            data_serializer = getHealthIssuesSerializer(items, many=True)
            return Response({'healthissuedata': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            result = items
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

class ApisMasterView(viewsets.ModelViewSet):
    serializer_class = UserProfilesSerializer
    queryset = UserProfiles.objects.all()

# class CustomAuthTokenUser(ObtainAuthToken):
#     authentication_classes = [TokenAuthentication]
#     def post(self, request, *args, **kwargs):
#         User = get_user_model()
#         user = User.objects.all()
#         return  Response(user, status=status.HTTP_201_CREATED)

#######################################################################################################
#       API'S Functons                                                                                #
#######################################################################################################

@api_view(['POST'])
def getXDemo(request, pk):
    return JsonResponse({'code': 200,'message': 'successfully get!'}, status=status.HTTP_201_CREATED)

@api_view(['POST'])
def getProfilesDetail(request, pk):
    try:
        #User = get_user_model()
        #user = User.objects.get(pk=pk)
        user = UserProfiles.objects.get(users_id=pk)
        response = {
                'data': {
                    'profile_detail': {
                        'name':user.name,
                        'mobile':user.mobile,
                        'email':user.email,
                        'photo':str(user.photo),
                        'sex':user.sex,
                        'dob':user.dob,
                        'occupation':user.occupation,
                        'title':user.title,
                        'about':user.about,
                        'work_experience':user.work_experience,
                        'description':user.description,
                        'specialties':user.specialties,
                        'specialty_id':user.specialty_id,
                        'language':getListVal(user.language),
                        'blood_group':user.blood_group,
                        'locality':user.locality,
                        'address':user.address,
                        'address2':user.address2,
                        'city':user.city,
                        'state':user.state,
                        'country':user.country,
                        'pincode':user.pincode,
                        'latitude_coordinate':user.latitude_coordinate,
                        'longitude_coordinate':user.longitude_coordinate,
                        'section_flag':getListVal(user.section_flag),
                        'verification':user.verification,
                        'verification_text':user.verification_text,
                        'created_by':user.created_by,
                        'status':user.status
                    }
                },
                'message': 'Details successfully get',
                'status' : status.HTTP_200_OK
        }
        return JsonResponse(response, status=status.HTTP_200_OK)
        #return JsonResponse({'code': 200,'message': 'successfully get!'}, status=status.HTTP_201_CREATED)
    except UserProfiles.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)


def getListVal(data):
    if data is not None:
        result = ast.literal_eval(data)
    else:
        result = None
    return result
    

@api_view(['GET','POST'])
def getDoctorDetail(request, pk):
    try:
        user = UserProfiles.objects.get(users_id=pk)
        if user.occupation == "doctor":
            council = UsersRegistrationCouncils.objects.get(user_id=pk)
            education = UsersEducations.objects.get(user_id=pk)
            clinic = UsersClinics.objects.get(user_id=pk)
            IdentityProof = UsersIdentityProofs.objects.get(user_id=pk)
            Registration = MedicalRegistrationProofs.objects.get(user_id=pk)
            Establishment = EstablishmentProofs.objects.get(user_id=pk)
            MapLocation = MapLocations.objects.get(user_id=pk)
            #EstablishmentTimings = EstablishmentTimings.objects.get(user_id=pk)
            ConsultationFee = ConsultationFees.objects.get(user_id=pk)
            response = {
                    'data': {
                        'profile_detail': {
                            'name':user.name,
                            'mobile':user.mobile,
                            'email':user.email,
                            'photo':str(user.photo),
                            'sex':user.sex,
                            'dob':user.dob,
                            'occupation':user.occupation,
                            'title':user.title,
                            'about':user.about,
                            'work_experience':user.work_experience,
                            'description':user.description,
                            'specialties':user.specialties,
                            'specialty_id':user.specialty_id,
                            'language':getListVal(user.language),
                            'blood_group':user.blood_group,
                            'locality':user.locality,
                            'address':user.address,
                            'address2':user.address2,
                            'city':user.city,
                            'state':user.state,
                            'country':user.country,
                            'pincode':user.pincode,
                            'latitude_coordinate':user.latitude_coordinate,
                            'longitude_coordinate':user.longitude_coordinate,
                            'section_flag':getListVal(user.section_flag),
                            'flag_count':user.flag_count,
                            'verification':user.verification,
                            'verification_text':user.verification_text,
                            'created_by':user.created_by,
                            'status':user.status
                        },
                        'council_detail': {
                            'name':council.name,
                            'registration_no':council.registration_no,
                            'registration_year':council.registration_year,
                            'registration_file':str(council.file),
                            'description':council.description,
                            'status':council.status
                        },
                        'education_detail': {
                            'name':education.name,
                            'univercity':education.univercity,
                            'passing_year':education.passing_year,
                            'description':education.description,
                            'status':education.status
                        },
                        'clinic_detail': {
                            'name':clinic.name,
                            'city':clinic.city,
                            'address':clinic.address,
                            'description':clinic.description,
                            'status':clinic.status
                        },
                        'identity_proof_detail': {
                            'name':IdentityProof.name,
                            'file':str(IdentityProof.file),
                            'description':IdentityProof.description,
                            'status':IdentityProof.status
                        },
                        'registration_detail': {
                            'name':Registration.name,
                            'file':str(Registration.file),
                            'description':Registration.description,
                            'status':Registration.status
                        },
                        'establishment_detail': {
                            'name':Establishment.name,
                            'file':str(Establishment.file),
                            'description':Establishment.description,
                            'status':Establishment.status
                        },
                        'maplocations_detail': {
                            'name':MapLocation.name,
                            'address':MapLocation.address,
                            'city':MapLocation.city,
                            'state':MapLocation.state,
                            'country':MapLocation.country,
                            'pincode':MapLocation.pincode,
                            'latitude_coordinate':MapLocation.latitude_coordinate,
                            'longitude_coordinate':MapLocation.longitude_coordinate,
                            'description':MapLocation.description,
                            'status':MapLocation.status
                        },
                        'consultationfee_detail': {
                            'name':ConsultationFee.name,
                            'amount':ConsultationFee.amount,
                            'description':ConsultationFee.description,
                            'status':ConsultationFee.status
                        },
                    },
                    'message': 'Details successfully get',
                    'status' : status.HTTP_200_OK
            }
        elif user.occupation == "patient":
            response = {
                    'data': {
                        'profile_detail': {
                            'name':user.name,
                            'mobile':user.mobile,
                            'mobile_code':91,
                            'email':user.email,
                            'photo':str(user.photo),
                            'sex':user.sex,
                            'dob':user.dob,
                            'occupation':user.occupation,
                            'title':user.title,
                            'about':user.about,
                            'work_experience':user.work_experience,
                            'description':user.description,
                            'specialties':user.specialties,
                            'specialty_id':user.specialty_id,
                            'language':user.language,
                            'blood_group':user.blood_group,
                            'locality':user.locality,
                            'address':user.address,
                            'address2':user.address2,
                            'city':user.city,
                            'state':user.state,
                            'country':user.country,
                            'pincode':user.pincode,
                            'latitude_coordinate':user.latitude_coordinate,
                            'longitude_coordinate':user.longitude_coordinate,
                            'verification':user.verification,
                            'verification_text':user.verification_text,
                            'created_by':user.created_by,
                            'status':user.status
                        },
                    'message': 'Details successfully get',
                    'status' : status.HTTP_200_OK
                }
            }
        else:
            return JsonResponse({'message': 'Profile does not exist'}, status=status.HTTP_404_NOT_FOUND)
        return JsonResponse(response, status=status.HTTP_200_OK)
        #return JsonResponse({'code': 200,'message': 'successfully get!'}, status=status.HTTP_201_CREATED)
    except UserProfiles.DoesNotExist:
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['POST'])
def profileFlagUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UserProfiles.objects.get(users_id=userID)
        section_flag = request.data.get('section_flag', None)
        if section_flag is not None:
            if section_flag == 1:
                obj.section_flag = [True, False, False]
            elif section_flag == 2:
                obj.section_flag = [True, True, False]
            elif section_flag == 3:
                obj.section_flag = [True, True, True]
        obj.save()
        return JsonResponse({'message': 'Flag successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

def profileFlagCountUpdate(id, count):
    if id is not None:
        obj = UserProfiles.objects.get(users_id=id)
        if obj.flag_count == count:
            obj.flag_count = obj.flag_count+1
            obj.save()
            return 1
        else:
            return 0
    return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def profilePhotoUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        if userID is None:
            return Response({'message': "User Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        try:
            obj = UserProfiles.objects.get(users_id=userID)
            try:
                #obj.photo = request.data.get('photo')
                img_base64_str = request.data.get('photo')
                if img_base64_str:
                    obj.photo = base64_file(img_base64_str)
                else:
                    return Response({'message': 'Please upload an photo!','status':404}, status=status.HTTP_404_NOT_FOUND)
            except KeyError:
                #raise ParseError('Request has no resource file attached')
                return Response({'message': 'Please upload an valid photo!','status':400}, status=status.HTTP_404_NOT_FOUND)
            obj.save()
            return JsonResponse({'message': 'Photo successfully updated!','status':200}, status=status.HTTP_201_CREATED)
        except UserProfiles.DoesNotExist:
            return JsonResponse({'message': "User Doesn't exist"}, status=status.HTTP_404_NOT_FOUND)
    #return Response(errors, status=status.HTTP_400_BAD_REQUEST)
    return Response({'message': 'Request method not valid!','status':400}, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def profileUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UserProfiles.objects.get(users_id=userID)
        obj.name = request.data.get('name')
        obj.email = request.data.get('email')
        obj.sex = request.data.get('sex')
        obj.work_experience = request.data.get('work_experience')
        #obj.mobile = request.data.get('mobile')
        obj.address = request.data.get('address')
        obj.dob = request.data.get('dob')
        obj.description = 'demo description'
        obj.specialties = request.data.get('specialties')
        if obj.flag_count == 0:
            obj.flag_count = obj.flag_count+1
        try:
            #obj.photo = request.data.get('photo')
            img_base64_str = request.data.get('photo')
            if img_base64_str:
                obj.photo = base64_file(img_base64_str)
        except KeyError:
            raise ParseError('Request has no resource file attached')
        obj.save()
        return JsonResponse({'message': 'successfully updated!','status':200}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def RegistrationCouncilUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UsersRegistrationCouncils.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.registration_no = request.data.get('registration_no')
        obj.registration_year = request.data.get('registration_year')
        obj.description = 'demo description'
        profileFlagCountUpdate(userID,1)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def EducationUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UsersEducations.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.univercity = request.data.get('univercity')
        obj.passing_year = request.data.get('passing_year')
        obj.description = 'demo description'
        profileFlagCountUpdate(userID,2)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def ClinicsUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UsersClinics.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.city = request.data.get('city')
        obj.address = request.data.get('address')
        obj.description = 'demo description'
        profileFlagCountUpdate(userID,3)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def IdentityProofUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UsersIdentityProofs.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        try:
            #obj.file = request.data.get('file')
            img_base64_str = request.data.get('file')
            if img_base64_str is not None:
                obj.file = base64_file(img_base64_str)
        except KeyError:
            raise ParseError('Request has no resource file attached')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,4)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def MedicalRegistrationProofUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = MedicalRegistrationProofs.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        try:
            #obj.file = request.data.get('file')
            img_base64_str = request.data.get('file')
            obj.file = base64_file(img_base64_str)
        except KeyError:
            raise ParseError('Request has no resource file attached')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,5)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def EstablishmentProofsUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = EstablishmentProofs.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        try:
            #obj.file = request.data.get('file')
            img_base64_str = request.data.get('file')
            obj.file = base64_file(img_base64_str)
        except KeyError:
            raise ParseError('Request has no resource file attached')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,6)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def MapLocationsUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = MapLocations.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.address = request.data.get('address')
        obj.city = request.data.get('city')
        obj.state = request.data.get('state')
        obj.country = request.data.get('country')
        obj.pincode = request.data.get('pincode')
        obj.latitude_coordinate = request.data.get('latitude_coordinate')
        obj.longitude_coordinate = request.data.get('longitude_coordinate')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,7)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def EstablishmentTimingsUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = EstablishmentTimings.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.start_at = request.data.get('start_at')
        obj.end_at = request.data.get('end_at')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,8)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def EstablishmentTimingsAdd(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = EstablishmentTimings()
        #obj = EstablishmentTimings.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.user_id = request.data.get('user_id')
        obj.start_at = request.data.get('start_at')
        obj.end_at = request.data.get('end_at')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,8)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully Inserted!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def ConsultationFeesUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = ConsultationFees.objects.get(user_id=userID)
        obj.name = request.data.get('name')
        obj.amount = request.data.get('amount')
        obj.description = 'Identity proof submited'
        profileFlagCountUpdate(userID,9)
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'POST'])
def getXDoctorAppointments(request, pk):
    try:
        #response = UserProfiles.objects.filter(occupation='doctor')
        #data = models.UserProfiles.objects.annotate(full_name=Concat('name', V(' '), 'email')).filter(Q(users_id=pk))
        #data = Appointments.objects.filter(doctor_id=pk)[0]
        #data = Appointments.objects.get(doctor_id=pk) AppointmentSerializer
        data = AppointmentSerializer.objects.filter(id=2).first()
        user = UserProfiles.objects.get(users_id=pk)
        response = {
                    'profile_detail': {
                        'name':user.name,
                        'mobile':user.mobile,
                        'email':user.email,
                        'photo':json.dumps(str(user.photo)),
                        'sex':user.sex,
                        'dob':user.dob,
                        'address':user.address,
                        'status':user.status
                    }
                }
        # response = []
        # dictionary = {}
        # for row in data:
        #     dictionary = {
        #         'id' : row.id,
        #         'name': row.name
        #     }
        # xresponse = {
        #     "name":data.id,
        #     "mobile":data.id
        # }
        #response.append(dictionary)
        #response.update(dictionary)
        return JsonResponse(response, status=status.HTTP_200_OK)
    except ObjectDoesNotExist:
        return JsonResponse({'message': 'Record does not exist'}, status=status.HTTP_404_NOT_FOUND)

@api_view(['POST'])
def postDoctorAppointments(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = Appointments()
        obj.name = request.data.get('name')
        obj.patient_id = userID
        obj.mobile = request.data.get('mobile')
        obj.address = request.data.get('address')
        obj.city = request.data.get('city')
        obj.doctor_id = request.data.get('doctor_id')
        obj.illness_information = request.data.get('illness_information')
        obj.amount = request.data.get('amount')
        obj.doctor_appointment_at = request.data.get('doctor_appointment_at')
        obj.meeting_time_period = request.data.get('meeting_time_period')
        #obj.description = 'Identity proof submited'
        #obj.save()
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!'}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully booked!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'POST'])
def getDoctorAppointments(request, pk):
    if request.method == 'GET':
        try:
            users = Appointments.objects.filter(doctor_id=pk)
            #if users is not None:
            if users:
                users_serializer = AppointmentSerializer(users, many=True)
                return JsonResponse(users_serializer.data, safe=False)
            else:
                return Response({'message': "Appointments Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
        #except users_serializer.DoesNotExist:
            return Response({'message': "Appointments Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)

@api_view(['GET'])
def getMyAppointments(request, pk):
    if request.method == 'GET':
        try:
            users = Appointments.objects.filter(patient_id=pk)
            if users:
                users_serializer = AppointmentSerializer(users, many=True)
                return JsonResponse(users_serializer.data, safe=False)
            else:
                return Response({'message': "Appointments Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            return Response({'message': "Appointments Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)

@api_view(['GET'])
def getAppointmentDetails(request, pk):
    if request.method == 'GET':
        try:
            User = Appointments.objects.get(id=pk)
            response = {
                'name':User.name,
                'mobile':User.mobile,
                'email':User.email,
                'sex':User.sex,
                'dob':User.dob,
                'address':User.address,
                "city": User.city,
                "occupation": User.occupation,
                "amount": User.amount,
                "illness_information": User.illness_information,
                "doctor_appointment_at": User.doctor_appointment_at,
                "meeting_time_period": User.meeting_time_period,
                'message': 'get data',
                'status' : User.status      
            }
            return JsonResponse(response, status=status.HTTP_200_OK)
        except User.DoesNotExist:
            return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)


@api_view(['GET'])
def getDoctorAppointmentTimePeriods(request, pk):
    if request.method == 'GET':
        users = Appointments.objects.all()
        #data = Appointments.objects.filter(doctor_id=pk)[0]
        #15 minutes in hours
        if users is not None:
            result = users
        else:
            result = 'Success'
        users_serializer = AppointmentSerializer(result, many=True)
        return Response(users, status=status.HTTP_200_OK)
        return Response(users_serializer.data, safe=False)

@api_view(['GET'])
def getLanguages(request):
    if request.method == 'GET':
        items = ModelLanguages.objects.all()
        if items is not None:
            data_serializer = ModelLanguagesSerializer(items, many=True)
            return Response({'languagedata': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            result = items
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def profileLanguageUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UserProfiles.objects.get(users_id=userID)
        obj.language = request.data.get('language', None)
        obj.save()
        return JsonResponse({'message': 'Language successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def postUserAddress(request):
    if request.method == 'POST':
        obj = Address()
        obj.user_id = request.data.get('user_id', None)
        obj.subject = request.data.get('subject')
        obj.address = request.data.get('address')
        obj.city = request.data.get('city')
        obj.state = request.data.get('state')
        obj.country = request.data.get('country')
        obj.pincode = request.data.get('pincode')
        obj.latitude_coordinate = request.data.get('latitude_coordinate')
        obj.longitude_coordinate = request.data.get('longitude_coordinate')
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!','status':400}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully Inserted!','status':200}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getUserAddress(request, pk):
    if request.method == 'GET':
        try:
            items = Address.objects.filter(user_id=pk)
            if items:
                items_serializer = AddressSerializer(items, many=True)
                return Response({'data': items_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
                #return JsonResponse(items_serializer.data, status=200,safe=False)
                #return JsonResponse(data=items_serializer.data, data_status='success', status=200)
                return Response(serializer.data, status=status.HTTP_200_OK)
            else:
                return Response({'message': "Address Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
        #except items_serializer.DoesNotExist:
            return Response({'message': "Address Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)

@api_view(['POST'])
def postFamilyMemberProfiles(request):
    if request.method == 'POST':
        obj = FamilyMemberProfiles()
        obj.user_id = request.data.get('user_id', None)
        obj.name = request.data.get('name')
        obj.email = request.data.get('email')
        obj.mobile = request.data.get('mobile')
        obj.blood_relationship = request.data.get('blood_relationship')
        obj.address = request.data.get('address')
        obj.city = request.data.get('city')
        obj.state = request.data.get('state')
        obj.country = request.data.get('country')
        obj.pincode = request.data.get('pincode')
        obj.latitude_coordinate = request.data.get('latitude_coordinate')
        obj.longitude_coordinate = request.data.get('longitude_coordinate')
        try:
            #obj.photo = request.data.get('photo')
            img_base64_str = request.data.get('photo')
            if img_base64_str:
                obj.photo = base64_file(img_base64_str)
        except KeyError:
            raise ParseError('Request has no resource file attached')
        obj.save()
        return JsonResponse({'message': 'successfully Inserted!','status':200}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getFamilyMemberProfiles(request, pk):
    if request.method == 'GET':
        try:
            # User = UserProfiles.objects.get(id=pk)
            # userid = User.users_id
            items = FamilyMemberProfiles.objects.filter(user_id=pk)
            if items:
                items_serializer = FamilyMemberProfilesSerializer(items, many=True)
                return Response({'data': items_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            else:
                return Response({'message': "Profile Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            return Response({'message': "Profile Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)

@api_view(['POST','PUT'])
def updateFamilyMemberProfiles(request):
    if request.method == 'POST' or request.method == 'PUT':
        pk = request.data.get('id', None)
        obj = FamilyMemberProfiles.objects.get(id=pk)
        obj.name = request.data.get('name')
        obj.email = request.data.get('email')
        obj.sex = request.data.get('sex')
        obj.mobile = request.data.get('mobile')
        obj.blood_relationship = request.data.get('blood_relationship')
        obj.address = request.data.get('address')
        obj.dob = request.data.get('dob')
        try:
            #obj.photo = request.data.get('photo')
            img_base64_str = request.data.get('photo')
            if img_base64_str:
                obj.photo = base64_file(img_base64_str)
        except KeyError:
            raise ParseError('Request has no resource file attached')
        obj.save()
        return JsonResponse({'message': 'successfully updated!','status':200}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def postUserReviews(request):
    if request.method == 'POST':
        user_id = request.data.get('user_id', None)
        doctor_id = request.data.get('doctor_id', None)
        UserData = UserProfiles.objects.get(users_id=user_id)
        profile_id = UserData.id
        User = UserProfiles.objects.get(id=doctor_id)
        doctor_userid = User.users_id
        obj = UserReviews()
        obj.profile_id = profile_id
        obj.doctor_id = doctor_userid
        obj.patient_id = user_id
        obj.ratting = request.data.get('ratting')
        obj.message = request.data.get('message')
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!','status':400}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully Inserted!','status':200}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getUserReviews(request, pk):
    if request.method == 'GET':
        try:
            User = UserProfiles.objects.get(id=pk)
            userid = User.users_id
            items = UserReviews.objects.filter(user_id=userid)
            if items:
                items_serializer = FamilyMemberProfilesSerializer(items, many=True)
                return Response({'data': items_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            else:
                return Response({'message': "Profile Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            return Response({'message': "Profile Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)

@api_view(['POST'])
def postFeverateDoctors(request):
    if request.method == 'POST':
        user_id = request.data.get('user_id', None)
        doctor_id = request.data.get('doctor_id', None)
        UserData = UserProfiles.objects.get(users_id=user_id)
        profile_id = UserData.id
        User = UserProfiles.objects.get(id=doctor_id)
        doctor_userid = User.users_id
        obj = FeverateDoctors()
        obj.profile_id = profile_id
        obj.doctor_id = doctor_userid
        obj.patient_id = user_id
        try:
            obj.save()
        except KeyError:
            return Response({'message': 'Something is wrong!','status':400}, status=status.HTTP_400_BAD_REQUEST)
        return JsonResponse({'message': 'successfully Inserted!','status':200}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def getFeverateDoctors(request, pk):
    if request.method == 'GET':
        try:
            User = UserProfiles.objects.get(id=pk)
            userid = User.users_id
            feverate_doctors = FeverateDoctors.objects.get(patient_id=userid)
            doctor_id = feverate_doctors.doctor_id
            items = UserProfiles.objects.get(users_id=doctor_id)
            if items:
                response = {
                    'name':items.name,
                    'mobile':items.mobile,
                    'email':items.email,
                    'sex':items.sex,
                    'dob':items.dob,
                    'about':items.about,
                    'photo':str(items.photo),
                    'work_experience':items.work_experience,
                    'description':items.description,
                    'specialties':items.specialties,
                    'specialty_id':items.specialty_id,
                    'language':getListVal(items.language),
                    'blood_group':items.blood_group,
                    'locality':items.locality,
                    'address':items.address,
                    'address2':items.address2,
                    'city':items.city,
                    'state':items.state,
                    'country':items.country,
                    'pincode':items.pincode,
                    'latitude_coordinate':user.latitude_coordinate,
                    'longitude_coordinate':user.longitude_coordinate,
                    'section_flag':getListVal(user.section_flag),
                    'flag_count':user.flag_count,
                    'verification':user.verification,
                    'verification_text':user.verification_text,
                    'created_by':user.created_by, 
                }
                # return JsonResponse(response, status=status.HTTP_200_OK)
                # items_serializer = FamilyMemberProfilesSerializer(items, many=True)
                return Response({'data': response, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            else:
                return Response({'message': "Profile Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            return Response({'message': "Profile Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)

#######################################################################################################
#       Main Functions                                                                                #
#######################################################################################################

@api_view(['POST'])
def getDoctorSlots(request):
    if request.method == 'POST':
        pk = request.data.get('doctor_id')
        q_date = request.data.get('q_date')
        hospital_id = request.data.get('hospital_id')
        if pk is None:
            return Response({'message': 'Please pass doctor id!','status' : 400}, status=status.HTTP_404_NOT_FOUND)
        try:
            User = UserProfiles.objects.get(id=pk)
            userid = User.users_id
            if User.occupation == "doctor":
                EstablishmentTiming = EstablishmentTimings.objects.get(user_id=userid)
                date_str = '2018-06-29'
                time_str = str(EstablishmentTiming.start_at) # '08:15:27'
                #time_str ='08:15:27'
                ###### Slots ################################################
                seconds_diff = int(hms_to_s(str(EstablishmentTiming.end_at)))-int(hms_to_s(str(EstablishmentTiming.start_at)))
                minutes_diff = seconds_diff/60
                slots = int(minutes_diff/15)
                slotsdata = []
                for n in range(1,slots+1):
                    if n>=1:
                        date_time_str = date_str+' '+time_str
                        date_time_obj = datetime.datetime.strptime(date_time_str, '%Y-%m-%d %H:%M:%S')
                        updated_time = date_time_obj + timedelta(minutes=15)
                        pre_time = date_time_obj.time()
                        next_time = updated_time.time()
                        time_str = str(next_time)
                        slotsdata.append({"start_at": pre_time,"end_at": next_time})
                #############################################################
                response = {
                    'slots':slotsdata,
                    'message': 'get successfully!',
                    'status' : status.HTTP_200_OK     
                }
                return JsonResponse(response, status=status.HTTP_200_OK)
                #return Response({'data': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
            else:
                return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)
        except User.DoesNotExist:
            return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def postTreatmentWiseDoctorNew(request):
    if request.method == 'POST':
        specialties = request.data.get('specialties')
        items = UserProfiles.objects.filter(occupation='doctor')
        if items is not None:
            data_serializer = TreatmentWiseDoctorsNewSerializer(items, many=True)
            return Response({'doctorslist': data_serializer.data, 'message': 'get successfully!','status':200}, status=status.HTTP_200_OK)
        else:
            return Response({'message': "Record Doesn't exist",'status':404},status=status.HTTP_404_NOT_FOUND)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)




#######################################################################################################
#       base functions                                                                                #
#######################################################################################################

def dhms_to_sec(dhms_str):
    '''supports also format of d:h:m:s, h:m:s, m:s and s'''
    _,d,h,m,s = (':0'*10+dhms_str).rsplit(':',4)
    return int(d)*24*60*60+int(h)*60*60+int(m)*60+int(s)

def hms_to_s(s):
    t = 0
    for u in s.split(':'):
        t = 60 * t + int(u)
    return t

def base64_file(data, name=None):
    _format, _img_str = data.split(';base64,')
    _name, ext = _format.split('/')
    if not name:
        name = _name.split(":")[-1]
    return ContentFile(base64.b64decode(_img_str), name='{}.{}'.format(name, ext))


def base64Data(data, name=None):
    _format, _img_str = data.split(';base64,')
    _name, ext = _format.split('/')
    if not name:
        name = _name.split(":")[-1]
    return ContentFile(base64.b64decode(_img_str), name='{}.{}'.format(name, ext))

@api_view(['POST'])
def profileImageUpdate(request):
    if request.method == 'POST':
        userID = request.data.get('user_id', None)
        obj = UserProfiles.objects.get(users_id=userID)
        #image_data = request.data.get('data')
        img_base64_str = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAzCAIAAAC1w6d9AAAAh3pUWHRSYXcgcHJvZmlsZSB0eXBlIGV4aWYAAHjadY7LDcQwCETvVJESMOAByllFiZQOtvzFcqzksu8AoxGfoeN7nbQNGgtZ90ACXFhayqdE8ESZm3Abverk7tpKyWOTyhTIcLZn0G5/0RWB080dHTt2qetyqGhUrT0aV3nEyNc3XYn++CvFD0K+LCGFVYifAAAKAmlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNC40LjAtRXhpdjIiPgogPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iCiAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgZXhpZjpQaXhlbFhEaW1lbnNpb249IjUxIgogICBleGlmOlBpeGVsWURpbWVuc2lvbj0iNTEiCiAgIHRpZmY6SW1hZ2VXaWR0aD0iNTEiCiAgIHRpZmY6SW1hZ2VIZWlnaHQ9IjUxIgogICB0aWZmOk9yaWVudGF0aW9uPSIxIi8+CiA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgCjw/eHBhY2tldCBlbmQ9InciPz5pZgYrAAAAA3NCSVQICAjb4U/gAAAAR0lEQVRYw+3OsREAEBAAQfT+ORHdviJeINgr4GZ7ZranxVmxZ/0z2q+RkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkVW7puAGvSEr+egAAAAASUVORK5CYII="
        #####################################
        #image_data = requestData['user']['image']
        # format, imgstr = image_data.split(';base64,')
        # #print("format", format)
        # ext = format.split('/')[-1]
        # data = ContentFile(base64.b64decode(imgstr))  
        # file_name = "'myphoto." + ext
        #user.image.save(file_name, data, save=True) # image is User's model field
        #####################################
        today = datetime.now().date()
        now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        obj.description = 'update base64 image '+now
        obj.photo = base64_file(img_base64_str)
        #obj.photo.save(file_name, data, save=True)
        #obj.photo.save(file_name, data, save=True)
        # try:
        #     obj.photo = request.data.get('photo')
        # except KeyError:
        #     raise ParseError('Request has no resource file attached')
        obj.save()
        return JsonResponse({'message': 'successfully updated!'}, status=status.HTTP_201_CREATED)
    return Response(errors, status=status.HTTP_400_BAD_REQUEST)


#######################################################################################################
#       Auth User Register and Login                                                                  #
#######################################################################################################

# Register API
class RegisterAPI(generics.GenericAPIView):
    serializer_class = RegisterSerializer

    def post(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        #===================================================
        uid = serializer.data['id']
        name = serializer.data['username']
        email = serializer.data['email']
        #occupation = request.data['occupation']
        occupation = request.data.get('occupation', None)
        if occupation == 'doctor':
            pass
            pro_obj = UserProfiles.objects.create(users_id=uid, name=name, email=email, occupation='doctor')
            #pro_obj = UserProfiles.objects.create(_id=uid, name=name, email=email)
            pro_obj.save()
            #=====  =================
            pro_obj1 = UsersRegistrationCouncils.objects.create(user_id=uid, name=name)
            pro_obj1.save()
            pro_obj2 = UsersEducations.objects.create(user_id=uid, name=name)
            pro_obj2.save()
            pro_obj3 = UsersClinics.objects.create(user_id=uid, name=name)
            pro_obj3.save()
            pro_obj4 = UsersIdentityProofs.objects.create(user_id=uid, name=name)
            pro_obj4.save()
            pro_obj5 = MedicalRegistrationProofs.objects.create(user_id=uid, name=name)
            pro_obj5.save()
            pro_obj6 = EstablishmentProofs.objects.create(user_id=uid, name=name)
            pro_obj6.save()
            pro_obj7 = MapLocations.objects.create(user_id=uid, name=name)
            pro_obj7.save()
            pro_obj8 = EstablishmentTimings.objects.create(user_id=uid, name=name)
            pro_obj8.save()
            pro_obj9 = ConsultationFees.objects.create(user_id=uid, name=name)
            pro_obj9.save()
        else:
            pro_obj = UserProfiles.objects.create(users_id=uid, name=name, email=email)
            #pro_obj = UserProfiles.objects.create(_id=uid, name=name, email=email)
            pro_obj.save()
        # return JsonResponse({'data': user}, status=status.HTTP_404_NOT_FOUND)
        # return HttpResponse(serializer.data['id'])
        #===================================================
        return Response({
            "user": UserSerializer(user, context=self.get_serializer_context()).data,
            "token": AuthToken.objects.create(user)[1]
        })

class LoginAPI(KnoxLoginView):
    permission_classes = (permissions.AllowAny,)
    def post(self, request, format=None):
        serializer = AuthTokenSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        login(request, user)
        return super(LoginAPI, self).post(request, format=None)

@api_view(['POST'])
def login_view(request):
    username = request.data.get('username')
    password = request.data.get('password')
    if username and password:
        try:
            user_auth = authenticate(username=username, password=password)
            if user_auth:
                login(request, user_auth)
                last_login = user_auth.last_login
                token = AuthToken.objects.create(user_auth)[1]
                response = {
                        'token': token,
                        'user_id': user_auth.pk,
                        'message': 'Logined successfully',
                        'status' : status.HTTP_200_OK
                }
                return Response(response, status=status.HTTP_200_OK)
            else:
                return Response({'message': "You have entered an invalid username or password"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            return Response({'message': "User Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
    else:
        return Response({'message': 'Please entered username and password!'},status=status.HTTP_406_NOT_ACCEPTABLE)

########################## OTP Auth ########################################################################################
@api_view(['POST'])
def SignupOTPAPI(request):
    if request.method == 'POST':
        mobile = request.data.get('mobile', None)
        try:
            user = User.objects.get(username=mobile)
            return Response({'message': "user already registered!"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            pass
        if mobile:
            try:
                email = "test1234@gmail.com"
                password = "yogi123"
                user_obj = User.objects.create(username=mobile, email=email)
                user_obj.set_password(password)
                user_obj.save()
                user_auth = authenticate(username=mobile, password=password)
                login(request, user_auth)
                last_login = user_auth.last_login
                token = AuthToken.objects.create(user_auth)[1]
                #===================================================
                uid = user_auth.pk
                name = "Dr. XXX"
                p_name = "Name"
                occupation = request.data.get('occupation', None)
                if occupation == 'doctor':
                    pass
                    pro_obj = UserProfiles.objects.create(users_id=uid, mobile=mobile, occupation='doctor')
                    pro_obj.save()
                    pro_obj1 = UsersRegistrationCouncils.objects.create(user_id=uid, name=name)
                    pro_obj1.save()
                    pro_obj2 = UsersEducations.objects.create(user_id=uid, name=name)
                    pro_obj2.save()
                    pro_obj3 = UsersClinics.objects.create(user_id=uid, name=name)
                    pro_obj3.save()
                    pro_obj4 = UsersIdentityProofs.objects.create(user_id=uid, name=name)
                    pro_obj4.save()
                    pro_obj5 = MedicalRegistrationProofs.objects.create(user_id=uid, name=name)
                    pro_obj5.save()
                    pro_obj6 = EstablishmentProofs.objects.create(user_id=uid, name=name)
                    pro_obj6.save()
                    pro_obj7 = MapLocations.objects.create(user_id=uid, name=name)
                    pro_obj7.save()
                    pro_obj8 = EstablishmentTimings.objects.create(user_id=uid, name=name)
                    pro_obj8.save()
                    pro_obj9 = ConsultationFees.objects.create(user_id=uid, name=name)
                    pro_obj9.save()
                else:
                    pro_obj = UserProfiles.objects.create(users_id=uid, mobile=mobile)
                    pro_obj.save()
                #===================================================
                response = {
                        'token': token,
                        'user_id': user_auth.pk,
                        'message': 'Registered Successfully',
                        'status' : status.HTTP_200_OK
                }
                return Response(response, status=status.HTTP_200_OK)
            except ObjectDoesNotExist:
                return Response({'message': "Unable to sign up!"},status=status.HTTP_406_NOT_ACCEPTABLE)
        else:
            return Response({'message': 'Please entered mobile and OTP!'},status=status.HTTP_406_NOT_ACCEPTABLE)
    return Response({'message': "Unable to sign up!"},status=status.HTTP_406_NOT_ACCEPTABLE)

@api_view(['POST'])
def LoginOTPAPI(request):
    username = request.data.get('mobile')
    password = "yogi123"
    if username and password:
        try:
            user_auth = authenticate(username=username, password=password)
            if user_auth:
                login(request, user_auth)
                last_login = user_auth.last_login
                token = AuthToken.objects.create(user_auth)[1]
                response = {
                        'token': token,
                        'user_id': user_auth.pk,
                        'message': 'Logined Successfully',
                        'status' : status.HTTP_200_OK
                }
                return Response(response, status=status.HTTP_200_OK)
            else:
                return Response({'message': "You have entered an invalid username or password"},status=status.HTTP_406_NOT_ACCEPTABLE)
        except ObjectDoesNotExist:
            return Response({'message': "User Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
    else:
        return Response({'message': 'Please entered username and password!'},status=status.HTTP_406_NOT_ACCEPTABLE)

######################################################################################################################
def SignupOTP(request, mobile, phone_code="+91",occupation=None):
    if mobile != None:
        try:
            email = "test1234@gmail.com"
            password = "yogi123"
            user = User.objects.get(username=mobile)
            user_auth = authenticate(username=mobile, password=password)
            login(request, user_auth)
            last_login = user_auth.last_login
            token = AuthToken.objects.create(user_auth)[1]
            response = {
                    'token': token,
                    'user_id': user_auth.pk,
                    'message': 'user already registered!',
                    'status' : status.HTTP_200_OK
            }
            return response
        except ObjectDoesNotExist:
            pass
        if mobile:
            try:
                user_obj = User.objects.create(username=mobile)
                #user_obj = User.objects.create(username=mobile, email=email)
                user_obj.set_password(password)
                user_obj.save()
                user_auth = authenticate(username=mobile, password=password)
                login(request, user_auth)
                last_login = user_auth.last_login
                token = AuthToken.objects.create(user_auth)[1]
                #===================================================
                uid = user_auth.pk
                name = "XXX"
                p_name = "XXX"
                occupation = request.data.get('occupation', None)
                if occupation == 'doctor':
                    pass
                    pro_obj = UserProfiles.objects.create(users_id=uid, mobile=mobile, phone_code=phone_code, occupation='doctor')
                    pro_obj.save()
                    pro_obj1 = UsersRegistrationCouncils.objects.create(user_id=uid, name=name)
                    pro_obj1.save()
                    pro_obj2 = UsersEducations.objects.create(user_id=uid, name=name)
                    pro_obj2.save()
                    pro_obj3 = UsersClinics.objects.create(user_id=uid, name=name)
                    pro_obj3.save()
                    pro_obj4 = UsersIdentityProofs.objects.create(user_id=uid, name=name)
                    pro_obj4.save()
                    pro_obj5 = MedicalRegistrationProofs.objects.create(user_id=uid, name=name)
                    pro_obj5.save()
                    pro_obj6 = EstablishmentProofs.objects.create(user_id=uid, name=name)
                    pro_obj6.save()
                    pro_obj7 = MapLocations.objects.create(user_id=uid, name=name)
                    pro_obj7.save()
                    pro_obj8 = EstablishmentTimings.objects.create(user_id=uid, name=name)
                    pro_obj8.save()
                    pro_obj9 = ConsultationFees.objects.create(user_id=uid, name=name)
                    pro_obj9.save()
                else:
                    pro_obj = UserProfiles.objects.create(users_id=uid, mobile=mobile, phone_code=phone_code)
                    pro_obj.save()
                #===================================================
                response = {
                        'token': token,
                        'user_id': user_auth.pk,
                        'message': 'Registered Successfully',
                        'status' : status.HTTP_200_OK
                }
                return response
            except ObjectDoesNotExist:
                return "Unable to sign up!"
        else:
            return "Please entered mobile and OTP!"
    return "Unable to sign up!"


class xlogoutOTP(APIView):
    def get(self, request, format=None):
        # simply delete the token to force a login
        request.user.auth_token.delete()
        return Response(status=status.HTTP_200_OK)

#@action(detail=False, methods=['post'])
@api_view(['POST'])
def xxlogoutOTP(self, request):
    try:
        request.user.auth_token.delete()
    except (AttributeError, ObjectDoesNotExist):
        pass
    django_logout(request)
    return Response(status=status.HTTP_200_OK)

@api_view(['POST'])
def logoutpost(self, request):
    return self.logoutOTP(request)

@api_view(['POST'])
def logoutOTP(self, request):
    try:
        request.user.auth_token.delete()
    except (AttributeError, ObjectDoesNotExist):
        pass
    logoutOTP(request)
    return Response({"success": _("Successfully logged out.")},
                    status=status.HTTP_200_OK)

###################### user verification ##############################

class CustomAuthToken(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data,
                                           context={'request': request})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token, created = Token.objects.get_or_create(user=user)
        return Response({
            'token': token.key,
            'user_id': user.pk,
            'email': user.email
        })

#######################################################################################################
#       End Auth User Register and Login                                                              #
#######################################################################################################

