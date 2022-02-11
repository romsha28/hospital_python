from django.urls import path, include
from . views import *

app_name = 'v1-patient-api'

urlpatterns = [
    path('', CheckApi.as_view(), name='check_api'),
    path('login/', UserLoginOtp.as_view(), name='login_api'),
    path('account/', UserProfileCRUD.as_view(), name='account'),
    path('doctors/', DoctorsApiView.as_view(), name='doctors'),
    path('doctors/<str:id>/', DoctorsProfileApi.as_view(), name='doctors'),
]
