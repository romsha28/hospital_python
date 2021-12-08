#from rest_framework import serializers
from .models import UserProfiles
from dateutil.relativedelta import *
from datetime import date, datetime

from rest_framework.serializers import (
	#HyperlinkedIdentityfield,
	ModelSerializer,
	SerializerMethodField,
	ValidationError
	)

class xUserProfilesSerializer(ModelSerializer):
	class Meta:
		model = UserProfiles
		fields = '__all__'
		extra_kwargs = {
            #'dob': {'write_only': True}
        }

	def validate_name(self, value):
		if len(value) > 30:
			raise ValidationError("Donor\'s name must be 30 characters.")
		return value

	def validate_dob(self, value):
		data = self.get_initial()
		dob1 = data.get("dob")
		dob = value
		dob = relativedelta(date.today(), dob).years
		if dob < 18:
			raise ValidationError("Donor\'s Age Must be at least 18 years old.")
		return value

	def validate_mobile(self, value):
		if value[0:3] == +91:
			if len(value[3:]) != 10:
				raise ValidationError("Donor\'s mobile number Must be 10 digits.")
		return value

	def validate_pincode(self, value):
		if len(str(value)) != 6:
			raise ValidationError("Donor\'s pincode must be 6 digits.")
		return value

	def create(self, validated_data):
		#UserProfiles.objects.create_superuser(**validated_data)
		name = validated_data['name']
		dob = validated_data['dob']
		sex = validated_data['sex']
		email = validated_data['email']
		mobile = validated_data['mobile']
		blood_group = validated_data['blood_group']
		locality = validated_data['locality']
		pincode = validated_data['pincode']
		date_covid_Positive = validated_data['date_covid_Positive']
		date_covid_negative = validated_data['date_covid_negative']
		item_obj = UserProfiles(
				name = name,
				dob = dob,
				sex = sex,
				email = email,
				mobile = mobile,
				blood_group = blood_group,
				locality = locality,
				pincode = pincode,
				date_covid_Positive = date_covid_Positive,
				date_covid_negative = date_covid_negative
			)
		item_obj.save()
		return validated_data

