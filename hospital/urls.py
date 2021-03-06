from django.contrib import admin
from django.urls import path
from django.core.exceptions import PermissionDenied
from django.http import HttpResponse
from django.test import SimpleTestCase, override_settings
from . import views

def response_error_handler(request, exception=None):
    return HttpResponse('Error handler content', status=403)

def permission_denied_view(request):
    raise PermissionDenied

urlpatterns = [
    path('403/', permission_denied_view),
    #################################################################
    path('', views.index, name ='hospital'),
    path('dashborad', views.dashboard, name ='hospital-dashborad'),
    path('send-mail', views.sendMail, name ='hospital-sendmail'),
    path('user-list', views.getList, name ='hospital-list'),
    path('myprofile', views.getMyProfile, name ='myprofile'),
    path('myprofile-post', views.postMyProfile, name ='myprofile'),
    path('user-view/<int:id>', views.getView, name ='hospital-view'),
    path('user-save', views.postStore, name ='hospital-save'),
    path('user-deiele/<int:id>', views.getDeiele, name ='hospital-delete'),
    ############ Doctor #####################################################
    path('doctors', views.getDoctors, name ='doctors'),
    path('create-doctor', views.getCreateDoctor, name ='create-doctor'),
    path('post-doctor', views.postDoctors, name ='post-doctor'),
    path('doctor/<int:id>', views.getDoctorDetails, name ='details-doctor'),
    path('doctor-status/<int:id>', views.getDoctorStatus, name ='doctor-status'),
    path('doctor-edit/<int:id>', views.getDoctorEdit, name ='doctor-edit'),
    path('doctor-update/<int:id>', views.postDoctorUpdate, name ='doctor-update'),
    path('doctor-delete/<int:id>', views.getDoctorDelete, name ='doctor-delete'),
    path('doctor/docto-verification', views.getDoctoVerification, name ='doctor/docto-verification'),
    ############ Doctor #####################################################
    path('categories', views.getCategories, name ='categories'),
    path('subcategories', views.getSubCategories, name ='subcategories'),
    path('appointments', views.getAppointments, name ='appointments'),
    path('appointment/<int:id>', views.getAppointmentDetails, name ='appointment-details'),
    path('create-appointment', views.getCreateAppointments, name ='create-appointment'),
    path('store-appointment', views.postAppointments, name ='store-appointment'),
    path('status-appointment/<int:id>', views.getAppointmentStatus, name ='status-appointment'),
    path('appointment-edit/<int:id>', views.getAppointmentEdit, name ='appointment-edit'),
    path('appointment-update/<int:id>', views.postAppointmentUpdate, name ='appointment-update'),
    ############ treatments #####################################################
    path('treatments', views.getTreatments, name ='treatments'),
    path('treatment-create', views.getCreateTreatments, name ='treatment-create'),
    path('treatment-post', views.postStoreTreatments, name ='treatment-post'),
    path('treatment/<int:id>', views.getViewTreatments, name ='treatment-details'),
    path('treatment-status/<int:id>', views.getStatusTreatments, name ='treatment-status'),
    path('treatment-edit/<int:id>', views.getEditTreatments, name ='treatment-edit'),
    path('treatment-update/<int:id>', views.postUpdateTreatments, name ='treatment-update'),
    path('treatment-delete/<int:id>', views.getDeleteTreatments, name ='treatment-delete'),
    ############ treatments #####################################################
    path('treatment-categories', views.getTreatmentCategories, name ='treatment-categories'),
    path('treatment-categories-create', views.getCreateTreatmentCategories, name ='treatment-categories-create'),
    path('treatment-categories-post', views.postStoreTreatmentCategories, name ='treatment-categories-post'),
    path('treatment-categories/<int:id>', views.getViewTreatmentCategories, name ='treatment-categories-details'),
    path('treatment-categories-status/<int:id>', views.getStatusTreatmentCategories, name ='treatment-categories-status'),
    path('treatment-categories-edit/<int:id>', views.getEditTreatmentCategories, name ='treatment-categories-edit'),
    path('treatment-categories-update/<int:id>', views.postUpdateTreatmentCategories, name ='treatment-categories-update'),
    path('treatment-categories-delete/<int:id>', views.getDeleteTreatmentCategories, name ='treatment-categories-delete'),
    ############ patients #####################################################
    path('patients', views.getPatients, name ='patients'),
    path('patient-create', views.getCreatePatient, name ='patient-create'),
    path('patient-post', views.postStorePatient, name ='patient-post'),
    path('patient/<int:id>', views.getViewPatient, name ='patient-details'),
    path('patient-status/<int:id>', views.getStatusPatient, name ='patient-status'),
    path('patient-edit/<int:id>', views.getEditPatient, name ='patient-edit'),
    path('patient-update/<int:id>', views.postUpdatePatient, name ='patient-update'),
    path('patient-delete/<int:id>', views.getDeletePatient, name ='patient-delete'),
    ############ Plan #####################################################
    path('plans', views.getPlans, name ='plans'),
    path('plan-create', views.getCreatePlans, name ='plan-create'),
    path('plan-post', views.postStorePlans, name ='plan-post'),
    path('plan/<int:id>', views.getViewPlans, name ='plan-details'),
    path('plan-status/<int:id>', views.getStatusPlans, name ='plan-status'),
    path('plan-edit/<int:id>', views.getEditPlans, name ='plan-edit'),
    path('plan-update/<int:id>', views.postUpdatePlans, name ='plan-update'),
    path('plan-delete/<int:id>', views.getDeletePlans, name ='plan-delete'),
    path('plan-subscriptions', views.getPlanSubscriptions, name ='plan-subscriptions'),
    path('plan-subscriptions/<int:id>', views.getViewPlanSubscriptions, name ='plan-subscriptions-details'),
    path('plan-subscriptions-status/<int:id>', views.getStatusPlanSubscriptions, name ='plan-subscriptions-status'),
    ##########################################################################################################
    # Website
    # Website blogs
    path('blogs', views.getBlogs, name ='plans'),
    path('blog-create', views.getCreateBlogs, name ='plan-create'),
    path('blog-post', views.postStoreBlogs, name ='plan-post'),
    path('blog/<int:id>', views.getViewBlogs, name ='plan-details'),
    path('blog-status/<int:id>', views.getStatusBlogs, name ='plan-status'),
    path('blog-edit/<int:id>', views.getEditBlogs, name ='plan-edit'),
    path('blog-update/<int:id>', views.postUpdateBlogs, name ='plan-update'),
    path('blog-delete/<int:id>', views.getDeleteBlogs, name ='plan-delete'),
    # Website Banners
    path('banners', views.getBanners, name ='plans'),
    path('banner-create', views.getCreateBanners, name ='plan-create'),
    path('banner-post', views.postStoreBanners, name ='plan-post'),
    path('banner/<int:id>', views.getViewBanners, name ='plan-details'),
    path('banner-status/<int:id>', views.getStatusBanners, name ='plan-status'),
    path('banner-edit/<int:id>', views.getEditBanners, name ='plan-edit'),
    path('banner-update/<int:id>', views.postUpdateBanners, name ='plan-update'),
    path('banner-delete/<int:id>', views.getDeleteBanners, name ='plan-delete'),
    # Website pages 
    path('pages', views.getPages, name ='pages'),
    path('page-create', views.getCreatePages, name ='page-create'),
    path('page-post', views.postStorePages, name ='page-post'),
    path('page/<int:id>', views.getViewPages, name ='page-details'),
    path('page-status/<int:id>', views.getStatusPages, name ='page-status'),
    path('page-edit/<int:id>', views.getEditPages, name ='page-edit'),
    path('page-update/<int:id>', views.postUpdatePages, name ='page-update'),
    path('page-delete/<int:id>', views.getDeletePages, name ='page-delete'),
    # Website privacy policy
    path('policy', views.getPolicy, name ='policy'),
    path('policy-create', views.getCreatePolicy, name ='policy-create'),
    path('policy-post', views.postStorePolicy, name ='policy-post'),
    path('policy/<int:id>', views.getViewPolicy, name ='policy-details'),
    path('policy-status/<int:id>', views.getStatusPolicy, name ='policy-status'),
    path('policy-edit/<int:id>', views.getEditPolicy, name ='policy-edit'),
    path('policy-update/<int:id>', views.postUpdatePolicy, name ='policy-update'),
    path('policy-delete/<int:id>', views.getDeletePolicy, name ='policy-delete'),
    # settings
    path('settings', views.getSettings, name ='settings'),
    ############ End #####################################################

]


handler403 = response_error_handler

# #The page_not_found() view is overridden by handler404:
# handler404 = 'mysite.views.my_custom_page_not_found_view'
# #The server_error() view is overridden by handler500:
# handler500 = 'mysite.views.my_custom_error_view'
# #The permission_denied() view is overridden by handler403:
# handler403x = 'mysite.views.my_custom_permission_denied_view'
# #The bad_request() view is overridden by handler400:
# handler400 = 'mysite.views.my_custom_bad_request_view'

# ROOT_URLCONF must specify the module that contains handler403 = ...
@override_settings(ROOT_URLCONF=__name__)
class CustomErrorHandlerTests(SimpleTestCase):

    def test_handler_renders_template_response(self):
        response = self.client.get('/403/')
        # Make assertions on the response here. For example:
        self.assertContains(response, 'Error handler content', status_code=403)

