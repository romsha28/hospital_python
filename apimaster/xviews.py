from django.shortcuts import render
from rest_framework import viewsets
from .serializers import UserProfilesSerializer
from .models import UserProfiles

class xApisMasterView(viewsets.ModelViewSet):
	serializer_class = UserProfilesSerializer
	queryset = UserProfiles.objects.all()


