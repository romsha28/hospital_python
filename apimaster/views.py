from django.shortcuts import render
from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import get_user_model
from rest_framework import status, viewsets, generics, permissions
from rest_framework.decorators import api_view
from rest_framework.response import Response
from knox.models import AuthToken
from django.contrib.auth import authenticate, login
from rest_framework.authtoken.serializers import AuthTokenSerializer
from knox.views import LoginView as KnoxLoginView
from django.core.exceptions import ObjectDoesNotExist
from .serializers import UserSerializer, RegisterSerializer, UserProfilesSerializer, DoctorCouncilSerializer
from .models import *

# from .models import UserProfiles
# from rest_framework import *
# from .models import *
# from .serializers import *
# from rest_framework.views import APIView
# from rest_framework.response import Response
# from apimaster.models import UserProfiles
# from apimaster.serializers import UserProfilesSerializer

@api_view(['GET', 'POST', 'DELETE'])
def profile_list(request):
    if request.method == 'GET':
        User = get_user_model()
        users = UserProfiles.objects.all()
        if users is not None:
            result = users
        else:
            result = 'Success'
        users_serializer = UserProfilesSerializer(result, many=True)
        return JsonResponse(users_serializer.data, safe=False)


@api_view(['GET', 'POST', 'DELETE'])
def doctors_list(request):
    if request.method == 'GET':
        User = get_user_model()
        users = UserProfiles.objects.filter(occupation='doctor')
        if users is not None:
            result = users
        else:
            result = 'Success'
        users_serializer = UserProfilesSerializer(result, many=True)
        return JsonResponse(users_serializer.data, safe=False)

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

@api_view(['GET', 'PUT', 'DELETE'])
def profile_detail(request, id):
    try: 
        User = get_user_model()
        user = UserProfiles.objects.get(_id=id) 
    except User.DoesNotExist: 
        return JsonResponse({'message': 'The Page does not exist'}, status=status.HTTP_404_NOT_FOUND)

class ApisMasterView(viewsets.ModelViewSet):
    serializer_class = UserProfilesSerializer
    queryset = UserProfiles.objects.all()

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

    def xuser_signup(request):
        if request.method == 'POST':
            user_email = request.POST['email']
            username = request.POST['username']
            userpass = request.POST['password']
            try:
                user_obj = User.objects.create(username=username, email=user_email)
                user_obj.set_password(userpass)
                user_obj.save()
                user_auth = authenticate(username=username, password=userpass)
                login(request, user_auth)
                return redirect('home')
            except:
                messages.add_message(request, messages.ERROR, 'Unable to sign up.')
                return render(request, 'user_profile/signup.html')
        return render(request, 'user_profile/signup.html')

class RegisterDoctorAPI(generics.GenericAPIView):
    serializer_class = RegisterSerializer
    def post(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        #===================================================
        uid = serializer.data['id']
        name = serializer.data['username']
        email = serializer.data['email']
        pro_obj = UserProfiles.objects.create(users_id=uid, name=name, email=email, occupation='doctor')
        #pro_obj = UserProfiles.objects.create(_id=uid, name=name, email=email)
        pro_obj.save()
        # return JsonResponse({'data': user}, status=status.HTTP_404_NOT_FOUND)
        # return HttpResponse(serializer.data['id'])
        #===================================================
        return Response({
            "user": UserSerializer(user, context=self.get_serializer_context()).data,
            "token": AuthToken.objects.create(user)[1]
        })

    def xuser_signup(request):
        if request.method == 'POST':
            user_email = request.POST['email']
            username = request.POST['username']
            userpass = request.POST['password']
            try:
                user_obj = User.objects.create(username=username, email=user_email)
                user_obj.set_password(userpass)
                user_obj.save()
                user_auth = authenticate(username=username, password=userpass)
                login(request, user_auth)
                return redirect('home')
            except:
                messages.add_message(request, messages.ERROR, 'Unable to sign up.')
                return render(request, 'user_profile/signup.html')
        return render(request, 'user_profile/signup.html')

class LoginAPI(KnoxLoginView):
    permission_classes = (permissions.AllowAny,)

    def post(self, request, format=None):
        serializer = AuthTokenSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        login(request, user)
        return super(LoginAPI, self).post(request, format=None)

class xLoginOTPAPI(KnoxLoginView):
    permission_classes = (permissions.AllowAny,)
    def post(self, request, format=None):
        serializer = AuthTokenSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        login(request, user)
        return super(LoginAPI, self).post(request, format=None)


@api_view(['POST'])
def generate_otp(request):
    mobile = request.data.get('mobile', None)
    if mobile:
        otp = random.randrange(lower_limit, upper_limit+1)
        User.objects.create(mobile=mobile, otp=otp)
        return Response({'success': True})
    else:
        return Response({'Fail': True})

@api_view(['POST'])
def verify_otp(request):
    mobile = 9198316507
    otp = request.data.get('otp', None)
    if mobile and otp:
        try:
            user = User.objects.get(mobile=mobile, otp=otp)
        except User.DoesNotExist:
            return Response({'message': 'Invalid OTP'})
        token = Token.objects.create(user=user)
        return Response({'token': token})
    else:
        return Response({'Fail': True})

@api_view(['POST'])
def xxLoginOTPAPI(request):
    mobile = 9100091000
    otp = request.data.get('otp', None)
    if mobile and otp:
        try:
            user = User.objects.get(mobile=mobile, otp=otp)
        except User.DoesNotExist:
            return Response({'message': 'Invalid OTP'})
        token = Token.objects.create(user=user)
        return Response({'token': token})
    else:
        return Response({'Fail': True})

@api_view(['POST'])
def LoginOTPAPI(request):
    pk = request.data.get("pk")
    otp = request.data.get('otp', None)
    mobile = request.data.get("mobile")
    username = request.data.get("username")
    userpass = request.data.get("userpass")
    #User = get_user_model()
    #users = User.objects.all()
    #users = User.objects.get(pk=pk)
    user_profile = User.objects.get(pk=pk)
    serializer= UserSerializer(user_profile)
    return Response({"success": True, "status": "Success", "data": serializer.data}, status=status.HTTP_201_CREATED)
    #return Response(users, status=status.HTTP_200_OK)
    ######################################################################################################
    if mobile and otp:
        try:
            user = User.objects.get(mobile=mobile, otp=otp)
        except User.DoesNotExist:
            return Response({'message': 'Invalid OTP'})
        token = Token.objects.create(user=user)
        return Response({'token': token})
    else:
        return Response({'reason': "Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
    ######################################################################################################
    #user_auth = authenticate(request, pk=pk, otp=otp)
    #user_auth = authenticate(username=username, password=userpass)
    #user_auth = authenticate(mobile=mobile)
    # try:
    #     user_auth = authenticate(username=username, password=userpass)
    #     if user_auth:
    #         login(request, user_auth)
    #         last_login = user_auth.last_login
    #         # login(request, user_auth)
    #         response = user_detail(user_auth, last_login)
    #         return Response(response, status=status.HTTP_200_OK)
    #     else:
    #         return Response({'reason': "User Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
    # except ObjectDoesNotExist:
    #     return Response({'reason': "Doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
    ######################################################################################################
    #login(request, user_auth)
    # last_login = user_auth.last_login
    # login(request, user_auth)
    # response = user_detail(user_auth, last_login)
    # return Response({
    #     "user": user_auth.id,
    #     "username": user_auth.username,
    #     #"token": AuthToken.objects.create(user_auth)[1]
    # })
    ######################################################################################################
    #return Response({'result': user_auth.email})
    #return Response(response, status=status.HTTP_200_OK)
    # return Response({'result': otp})
    # try:
    #     user = authenticate(request, pk=pk, otp=otp)
    #     if user:
    #         last_login = user.last_login
    #     login(request, user)
    #     response = user_detail(user, last_login)
    #     return Response(response, status=status.HTTP_200_OK)
    # except ObjectDoesNotExist:
    #     return Response({'reason': "OTP doesn't exist"},status=status.HTTP_406_NOT_ACCEPTABLE)
    #return Response({'Fail': True})

#######################################################################################################
#       End Auth User Register and Login                                                              #
#######################################################################################################

