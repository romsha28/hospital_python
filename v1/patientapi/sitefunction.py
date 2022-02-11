from django.contrib.auth.models import User
import random
import datetime
from datetime import datetime, date
from rest_framework.authtoken.models import Token
today = date.today()
today_now = datetime.now()
from .models import V1_UserOtp as UserOtp
from apimaster.models import UserProfiles
from django.dispatch import receiver
import requests

def get_ip_or_location(request):
    #ip = request.META['REMOTE_ADDR']
    ip = "45.249.68.33"
    data = {}
    
    
    try:
        url = 'https://get.geojs.io/v1/ip/geo/'+ ip +'.json'
        geo_request = requests.get(url)
        geo_data = geo_request.json()

        #print(geo_data)

        
        geo_data['region_name'] = geo_data['region']
        geo_data['country_name'] = geo_data['country']

        
        geo_data['zip'] = requests.get('http://ip-api.com/json').json()['zip']
        

        data = {'status':200, 'geo_data':geo_data}
        
    except Exception as e:
        data = {'status':400}

    return data

def setOtp(user):
    data = {'response':'error', 'status':400, 'msg':'User Name Is Not Valid'}
    if user is None:
        return data

    try:
        #Existing account new otp
        user_otp = UserOtp.objects.get(user=user)
    except:
        #New account new otp
        user_otp = UserOtp(user=user)

    user_otp.otp = 'process'
    user_otp.updated_at = today_now
    user_otp.save() 
    data['response'] = 'success'
    data['status'] = 200
    data['msg'] = f'Otp Successfully Send {user_otp.otp}'

    return data

def login_with_otp(user, otp, request):
    data = {'response':'error', 'status':400}

    try:
        chk_otp = UserOtp.objects.get(user=user, otp=otp, is_expire=False)
    except Exception as e:
        data['msg'] = 'Invalid Otp Or Otp Is expired'
        return data


    chk_otp.is_expire = True
    chk_otp.save()

    print("Check Date", chk_otp.updated_at.date() , today)
    
    #DATE CALCULATIONS PENDING
    if chk_otp.updated_at.date() == today or chk_otp.updated_at.date() != today:
        token, created = Token.objects.get_or_create(user=user)
        data['msg'] = 'Token Generate'

        userdata = {"username":user.username, "name":f"{user.first_name}"}
		

		
        
        data['data'] = {'token':str(token), 
        'geo_data':get_ip_or_location(request),
        'user':userdata,
        
        }
        
        data['response'] = 'success'
        data['status'] = 200
        pass
    else:
        data['msg'] = 'Otp is expired'


    return data    

def get_or_create_user(username):
    s = 11111111111111
    e = 999999999999999

    try:
        user = User.objects.get(username=username)
    except:
        if len(username) != 12 or username[0:2] != '91':
            return None
        user = User.objects.create_user(username=username, password=str(random.randint(s,e))) 


    return user

def get_or_create_userprofile(request):
    
    try:
        profile = UserProfiles.objects.get(user=request.user)
        return profile
    except:
        pass    
    
    geo_data = get_ip_or_location(request)

    profile = UserProfiles()
    profile.user = request.user
    if geo_data['status'] == 200:
        geo_data = geo_data['geo_data']
        profile.city = geo_data['city']
        profile.state = geo_data['region_name']
        profile.country = geo_data['country_name']
        profile.pincode = geo_data['zip']
        profile.latitude_coordinate = geo_data['latitude']
        profile.longitude_coordinate = geo_data['longitude']

    try:
        profile.save()
    except:
        return 404    
    
    return profile





#No Required Function........
def get_or_update_userprofile(request, obj_query):
    data = {}
    try:
        profile = UserProfiles.objects.get(user=request.user)
    except:
        profile = UserProfiles(user=request.user)    
        profile.save()


    update_field = 0
    try:
        if profile.user.first_name != obj_query['name']:
            profile.user.first_name = obj_query['name']
            update_field+=1
    except:
        pass        

    try:
        if profile.user.email != obj_query['email']:
            profile.user.email = obj_query['email']
            update_field+=1
    except:
        pass

    profile.user.save()

    try:
        if profile.locality != obj_query['locality']:
            profile.locality = obj_query['locality']
            update_field+=1
    except:
        
        pass


    try:
        if profile.address != obj_query['address']:
            profile.address = obj_query['address']
            update_field+=1
    except:
        pass

    try:
        if profile.address2 != obj_query['address2']:
            profile.address2 = obj_query['address2']
            update_field+=1
    except:
        pass

    try:
        if profile.city != obj_query['city']:
            profile.city = obj_query['city']
            update_field+=1
    except:
        pass

    try:
        if profile.state != obj_query['state']:
            profile.state = obj_query['state']
            update_field+=1
    except:
        pass

    try:
        if profile.country != obj_query['country']:
            profile.country = obj_query['country']
            update_field+=1
    except:
        pass

    try:
        if profile.pincode != obj_query['pincode']:
            profile.pincode = obj_query['pincode']
            update_field+=1
    except:
        pass

    try:
        if profile.latitude_coordinate != obj_query['latitude_coordinate']:
            profile.latitude_coordinate = obj_query['latitude_coordinate']
            update_field+=1
    except:
        pass

    try:
        if profile.longitude_coordinate != obj_query['longitude_coordinate']:
            profile.longitude_coordinate = obj_query['longitude_coordinate']
            update_field+=1
    except:
        pass

    try:
        if obj_query['photo']:
            profile.photo = obj_query['photo']
            update_field+=1
    except:
        pass

    try:
        if profile.sex != obj_query['sex']:
            profile.sex = obj_query['sex']
            update_field+=1
    except:
        pass

    try:
        if profile.language != obj_query['language']:
            profile.language = obj_query['language']
            update_field+=1
    except:
        pass

    profile.save()

    data['profile'] = profile
    if update_field >0:
        data['status'] = 200
    else:
        data['status'] = 400

    data['response'] = 'success'
    data['msg'] = f"Total {update_field} Field Has Been Updated"
    return data





