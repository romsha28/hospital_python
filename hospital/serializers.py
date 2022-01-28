# from dateutil.relativedelta import *
# from datetime import date, datetime
# from rest_framework.serializers import (
# 	#HyperlinkedIdentityfield,
# 	ModelSerializer,
# 	SerializerMethodField,
# 	ValidationError
# 	)

# from rest_framework import serializers 
# #from apimaster.models import UserProfiles
# from .models import *
# from hospital.models import *
# from django.contrib.auth import get_user_model
# from django.contrib.auth.models import User

# from django.contrib.auth import authenticate, get_user_model
# from django.utils.translation import ugettext_lazy as _

# User = get_user_model()

# class getSpecialtySerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Treatments
#         fields = ('id', 'name', 'description', 'primary_image')

# class getHealthIssuesSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = TreatmentCategories
#         fields = ('id', 'name', 'description', 'primary_image', 'treatment_id')

# class UserProfilesSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = UserProfiles
#         fields = ("id", "name", "mobile", "email", "photo", "sex", "dob", "occupation", "about", "work_experience", "description", "specialties", "specialty_id", "language", "blood_group", "locality", "address", "address2", "city", "state", "country", "pincode", "latitude_coordinate", "longitude_coordinate", "verification", "verification_text", "created_by", "created_at", "status")
#         #fields = '__all__'