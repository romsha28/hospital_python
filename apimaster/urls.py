from django.conf.urls import url
from django.contrib import admin
from django.urls import path
from apimaster import views
from knox import views as knox_views
#from .views import RegisterAPI, LoginAPI, RegisterDoctor, CustomAuthToken
from .views import *

urlpatterns = [
    url(r'^api/profile$', views.profile_list),
    url(r'^api/doctors-list$', views.doctors_list),
    url(r'^api/doctors/(?P<pk>[0-9]+)$', views.getDoctors),
    url(r'^api/patients-list$', views.patients_list),
    url(r'^api/profile/(?P<pk>[0-9]+)$', views.profile_detail),
    ############################################################
    url(r'^api/profile-store$', views.profileStores),
    url(r'^api/doctor-store$', views.profileStores),
    url(r'^api/doctor-council-store$', views.doctorCouncilStores),
    ############################################################
    path('api/logout', knox_views.LogoutView.as_view(), name='logout'),
    path('api/logoutall', knox_views.LogoutAllView.as_view(), name='logoutall'),
    url(r'^api/profile/published$', views.profile_list),
    url(r'^api/register', RegisterAPI.as_view(), name='register'),
    path('api/login', LoginAPI.as_view(), name='login'),
    path('api/xlogin', views.login_view, name='login-set'),
    path('api/login-otp', views.LoginOTPAPI, name='login-otp'),
    path('api/signup-otp', views.SignupOTPAPI, name='signup-otp'),
    path('api/xlogout-otp', views.logoutOTP, name='logout-otp'),
    #path('api/logout-otp/', knox_views.LogoutView.as_view(), name='logout'),
    #url(r'^api-token-auth/', 'rest_framework.authtoken.views.obtain_auth_token')
    #path('api/all-user', views.CustomAuthTokenUser),
    #########################################################################
    url(r'^api/profile-details/(?P<pk>[0-9]+)$', views.getDoctorDetail), # getXDemo , getDoctorDetail
    path('api/profile-update', views.profileUpdate, name='profile-update'),
    path('api/profile-photo-update', views.profilePhotoUpdate, name='profile-photo-update'),
    path('api/profile-flag-update', views.profileFlagUpdate, name='profile-flag-update'),
    path('api/profile-council-update', views.RegistrationCouncilUpdate, name='profile-council-update'),
    path('api/profile-education-update', views.EducationUpdate, name='profile-education-update'),
    path('api/profile-clinic-update', views.ClinicsUpdate, name='profile-clinic-update'),
    path('api/profile-identityproof-update', views.IdentityProofUpdate, name='profile-identityproof-update'),
    path('api/profile-medicalproof-update', views.MedicalRegistrationProofUpdate, name='profile-medicalproof-update'),
    path('api/profile-establishment-update', views.EstablishmentProofsUpdate, name='profile-establishment-update'),
    path('api/profile-maplocations-update', views.MapLocationsUpdate, name='profile-maplocations-update'),
    path('api/profile-establishmenttimings-add', views.EstablishmentTimingsAdd, name='profile-maplocations-update'),
    path('api/profile-establishmenttimings-update', views.EstablishmentTimingsUpdate, name='profile-establishmenttimings-update'),
    path('api/profile-consultationfees-update', views.ConsultationFeesUpdate, name='profile-consultationfees-update'),
    url(r'^api/get-appointments/(?P<pk>[0-9]+)$', views.getDoctorAppointments),
    url(r'^api/get-myappointments/(?P<pk>[0-9]+)$', views.getMyAppointments),
    url(r'^api/get-appointment-details/(?P<pk>[0-9]+)$', views.getAppointmentDetails),
    path('api/post-appointments', views.postDoctorAppointments, name='post-appointments'),
    path('api/appointment-time-period', views.getDoctorAppointmentTimePeriods, name='post-appointments'),
    ########################## Mobile api's ##########################################################################################
    path('api/mob-site-config', views.getSiteConfig, name='mob-site-config'),
    path('api/profile-x', views.profileUpdate, name='profile-x'),
    path('api/profile-image', views.profileImageUpdate, name='profile-x'),
    path('api/get-specialty', views.getSpecialty, name='get-specialty'),
    path('api/get-health-issues', views.getHealthIssues, name='get-health-issues'),
    path('api/get-config-languages', views.getLanguageConfig, name='get-config-languages'),
    path('api/get-languages', views.getLanguages, name='get-languages'),
    path('api/post-languages', views.profileLanguageUpdate, name='post-languages'),
    path('api/post-address', views.postUserAddress, name='post-address'),
    url(r'^api/get-address/(?P<pk>[0-9]+)$', views.getUserAddress, name='get-address'),
    #########################################################################################
    path('api/hellox', views.HelloView.as_view(), name='hellox'),
    path('api/hello', views.getHello, name='hello'),
]
