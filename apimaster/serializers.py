from dateutil.relativedelta import *
from datetime import date, datetime
from rest_framework.serializers import (
	#HyperlinkedIdentityfield,
	ModelSerializer,
	SerializerMethodField,
	ValidationError
	)

from rest_framework import serializers 
#from apimaster.models import UserProfiles
from .models import *
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User

class UserProfilesSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfiles
        fields = ('id', 'name', 'email', 'mobile', 'sex', 'dob', 'occupation', 'address')
        #fields = '__all__'

class DoctorCouncilSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersRegistrationCouncils
        fields = ('id', 'name', 'registration_no', 'registration_year', 'description')


#User Serializer
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email', 'mobile', 'otp')

# Register Serializer
class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email', 'password')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'], validated_data['email'], validated_data['password'])

        return user


