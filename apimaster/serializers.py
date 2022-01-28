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
from hospital.models import *
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User

from django.contrib.auth import authenticate, get_user_model
from django.utils.translation import ugettext_lazy as _

User = get_user_model()

class getSubscriptionPlansSerializer(serializers.ModelSerializer):
    class Meta:
        model = SubscriptionPlans
        fields = ('id', 'name', 'amount', 'expiry_in_months', 'primary_image', 'created_by',)

class getHealthIssuesSerializer(serializers.ModelSerializer):
    class Meta:
        model = TreatmentCategories
        fields = ('id', 'name', 'description', 'primary_image', 'treatment_id')

class getSpecialtySerializer(serializers.ModelSerializer):
    #categories = getHealthIssuesSerializer(many=True, read_only=True)
    class Meta:
        model = Treatments
        fields = ('id', 'name', 'description', 'primary_image')

####################
class getTreatmentCategorieSerializer(serializers.ModelSerializer):
    class Meta:
        model = TreatmentCategories
        fields = ('id', 'name', 'description', 'primary_image',)


class getTreatmentSerializer(serializers.ModelSerializer):
    categories = getTreatmentCategorieSerializer(many=True, read_only=True)
    class Meta:
        model = Treatments
        fields = ('id', 'name', 'description', 'primary_image', 'categories')

class ChildSerializer(ModelSerializer):
    class Meta:
        model = TreatmentCategories
        fields = '__all__'


class ParentSerializer(ModelSerializer):
    #child = serializers.ListField(read_only=True, child=ChildSerializer())
    categories = ChildSerializer(many=True, read_only=True)
    class Meta:
        model = Treatments
        fields = '__all__'

##################################
# class StyleSerializer(serializers.ModelSerializer):
#     colors = StyleColorSerializer(source='stylecolor_set', many=True, read_only=True)
#     class Meta:
#         model = Style
#         fields = ('name', 'colors')

class UserProfilesSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfiles
        fields = ("id", "name", "mobile", "email", "photo", "sex", "dob", "occupation", "about", "work_experience", "description", "specialties", "specialty_id", "language", "blood_group", "locality", "address", "address2", "city", "state", "country", "pincode", "latitude_coordinate", "longitude_coordinate", "verification", "verification_text", "created_by", "created_at", "status")
        #fields = '__all__'

class DoctorCouncilSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersRegistrationCouncils
        fields = ('id', 'name', 'registration_no', 'registration_year', 'description')

class UsersEducationSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersEducations
        fields = ('id', 'name')

class UsersClinicSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersClinics
        fields = ('id', 'name')

class UsersIdentityProofSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersIdentityProofs
        fields = ('id', 'name')

class MedicalRegistrationProofSerializer(serializers.ModelSerializer):
    class Meta:
        model = MedicalRegistrationProofs
        fields = ('id', 'name')

class EstablishmentProofsSerializer(serializers.ModelSerializer):
    class Meta:
        model = EstablishmentProofs
        fields = ('id', 'name')

class AppointmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Appointments
        fields = ('id', 'name', 'email', 'mobile', 'sex', 'dob', 'occupation', 'city','address','amount','illness_information','doctor_appointment_at','meeting_time_period','status')

class ModelLanguagesSerializer(serializers.ModelSerializer):
    class Meta:
        model = ModelLanguages
        fields = ('id', 'code', 'value')

class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = ('id', 'subject','address','city','state','country','pincode','latitude_coordinate','longitude_coordinate')

class TreatmentWiseDoctorsSerializer(serializers.ModelSerializer):
    #treatment = getSpecialtySerializer(source='stylecolor_set', many=True, read_only=True)
    #treatment = getSpecialtySerializer(many=True, read_only=True)
    f_dict = {}
    class Meta:
        model = UserProfiles
        fields = ("id", "name", "mobile", "email", "photo", "sex", "dob", "occupation", "about", "work_experience", "description", "specialties", "specialty_id", "language", "blood_group", "locality", "address", "address2", "city", "state", "country", "pincode", "latitude_coordinate", "longitude_coordinate", "verification", "verification_text", "created_by", "created_at", "status")



#########################################################################################################################
#User Serializer
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email')

# Register Serializer
class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email', 'password')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'], validated_data['email'], validated_data['password'])

        return user

# Register Serializer
class RegisterOTPSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username')

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'])

        return user

# class xLoginSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = User
#         fields = ['username', 'password']
#         extra_kwargs = {'username': {'write_only': True}}
#         if User.objects.filter(username=username,password=password).exists():
#             return True
#         else:
#             return False
#         return False

class LoginSerializers(serializers.Serializer):
    username = serializers.CharField(max_length=255)
    password = serializers.CharField(
        label=("password"),
        style={'input_type': 'password'},
        trim_whitespace=False,
        max_length=128,
        write_only=True
    )

    def validate(self, data):
        username = data.get('username')
        password = data.get('password')

        if username and password:
            user = authenticate(request=self.context.get('request'),
                                username=username, password=password)
            if not user:
                msg = _('Unable to log in with provided credentials.')
                raise serializers.ValidationError(msg, code='authorization')
        else:
            msg = _('Must include "username" and "password".')
            raise serializers.ValidationError(msg, code='authorization')

        data['user'] = user
        return data

