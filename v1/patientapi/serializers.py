from re import L
from rest_framework import serializers
from apimaster.models import *
from django.contrib.auth.models import User


class UserProfileSrz(serializers.ModelSerializer):
    user = serializers.CharField(read_only=True)
    class Meta:
        model = UserProfiles
        fields = ('id', 'user', 'name', 'locality','address','address2','city',
                    'state','country','pincode','latitude_coordinate','specialties',
                     'longitude_coordinate', 'photo','occupation', 'dob', 'sex', 'language')

        read_only_fields = ('id', 'user')

        def update(self, instance, validated_data):
            
            data = UserProfiles.objects.get(pk=instance.id)
            UserProfiles.objects.filter(pk=instance.id).update(**validated_data)
            return data





# 


    



	 