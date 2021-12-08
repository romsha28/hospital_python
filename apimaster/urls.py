from django.conf.urls import url
from django.contrib import admin
from django.urls import path
from apimaster import views
from knox import views as knox_views 
from .views import RegisterAPI, LoginAPI, RegisterDoctorAPI
#from . import views
 
urlpatterns = [ 
    url(r'^api/profile$', views.profile_list),
    url(r'^api/doctors-list$', views.doctors_list),
    url(r'^api/patients-list$', views.patients_list),
    url(r'^api/profile/(?P<pk>[0-9]+)$', views.profile_detail),
    ############################################################
    url(r'^api/profile-store$', views.profileStores),
    url(r'^api/doctor-store$', views.profileStores),
    url(r'^api/doctor-council-store$', views.doctorCouncilStores),
    ############################################################
    url(r'^api/profile/published$', views.profile_list),
    url(r'^api/register', RegisterAPI.as_view(), name='register'),
    url(r'^api/register-doctor', RegisterDoctorAPI.as_view(), name='register-doctor'),
    path('api/login', LoginAPI.as_view(), name='login'),
    path('api/logout', knox_views.LogoutView.as_view(), name='logout'),
    path('api/logoutall', knox_views.LogoutAllView.as_view(), name='logoutall'),
    #path('api/register/', RegisterAPI.as_view(), name='register'),
    path('api/login-otp', views.LoginOTPAPI, name='login-otp'),
]
