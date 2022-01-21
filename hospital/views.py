from django.shortcuts import get_object_or_404, get_list_or_404, render, redirect
from reportlab.pdfgen import canvas
from django.http import Http404, HttpResponse, HttpResponseRedirect, HttpResponseNotFound
#from utils import render_to_pdf 
from datetime import date, datetime
from django.core.exceptions import PermissionDenied, ObjectDoesNotExist
from django.http.response import JsonResponse
from io import BytesIO
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.core.mail import EmailMessage
#from .models import Content, Contacts, Appointments
from .models import *
from apimaster.models import *
from django.contrib.auth import get_user_model
from django.contrib import messages
#from django.contrib.messages import constants as messages
#from apimaster.models import UserProfiles
from decimal import Decimal
from hospitalapp.settings import MEDIA_ROOT, MEDIA_URL
from django.db import connection
# login_required
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required

from django import template
from django.utils.safestring import mark_safe
from django.db.models import Sum
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

IMAGE_FILE_TYPES = ['png', 'jpg', 'jpeg']

MESSAGE_TAGS = {
    messages.DEBUG: 'alert-info',
    messages.INFO: 'alert-info',
    messages.SUCCESS: 'alert-success',
    messages.WARNING: 'alert-warning',
    messages.ERROR: 'alert-danger danger',
}

def sendMail(request):
	subject = "domain mail"
	body = "This mail for informing to your domail."
	email = EmailMessage(subject, body, to=['yogi2soni@mailinator.com'])
	email.send()
	return render(request, 'home.html')

@login_required
def index(request):
	#total_appointments = Appointments.objects.filter(field_name__isnull=True).aggregate(Sum('field_name'))
	total_appointments = Appointments.objects.count()
	total_doctors = UserProfiles.objects.filter(occupation='doctor').count()
	total_treatments = Treatments.objects.count()
	title = 'Dashboard'
	today = datetime.now().date()
	#return HttpResponse('<h4>index</h4>')
	context = {
	'title': title,
	"total_appointments" : total_appointments, 
	"total_treatments" : total_treatments, 
	"total_doctors" : total_doctors,
	"today":today,
	}
	return render(request, "dashboard.html", context)

@login_required
def dashboard(request):
	return render(request, 'dashboard.html')
	#return HttpResponse('<h4>Home</h4>')

@login_required
def getList(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		# Contacts
		xitems = Contacts.objects.filter(is_deleted=False)
		items_alls = Contacts.objects.all()
		p = Paginator(users, 10)
		page_number = request.GET.get('page')
		try:
		    page_obj = p.get_page(page_number)
		except PageNotAnInteger:
		    page_obj = p.page(1)
		except EmptyPage:
		    page_obj = p.page(p.num_pages)
		title='view'
		today = datetime.now().date()
		context = {'title': title, 'items': page_obj, 'today':today,"items_alls" : items_alls}
		messages.success(request, 'Welcome!')
		# print("Error: missing one of the libraries (numpy, pyfits, scipy, matplotlib)")
		# variable = "Yogesh Soni"
		# return HttpResponse(users)
		#====================================================================
		# messages.error(request, "Something went wrong!")
		# messages.success(request, 'Your profile was successfully updated!')
		# messages.error(request, "Your profile is updated successfully!")
		#====================================================================
	# ======== Mail Send ==================================
    # subject='SubjecT'
    # sendemail('yogeshsoni',subject,'EmailMessage text')
    # ======== Mail Send ==================================
    #return HttpResponse('<h4>User List</h4>')
	return render(request, "user_list.html", context)

@login_required
def getView(request, id):
	if request.method == 'GET':
		#item = Contacts.objects.filter(id=id)
		title='Show'
		try:
			item = UserProfiles.objects.filter(user_id=28)[0]
			#item = get_object_or_404(UserProfiles, user_id=id)
			#return HttpResponse(item.email)
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "contact_details.html", {'title': title, "item" : item})

@login_required
def postStore(request):
	if request.method == 'POST':
		obj = Contacts()
		# obj.name = form.cleaned_data['name']
		# obj.name = request.POST.get('name')
		# obj.mobile = request.POST.get('mobile')
		# obj.email = request.POST.get('email')
		# obj.subject = request.POST.get('subject')
		# obj.message = request.POST.get('message')
		obj.name = request.POST['name']
		obj.mobile = request.POST['mobile']
		obj.email = request.POST['email']
		obj.subject = request.POST['subject']
		obj.message = request.POST['message']
		obj.save()
	return HttpResponseRedirect('/')
    #return redirect('/')

#==================== User 
@login_required
def getMyProfile(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		item = UserProfiles.objects.get(pk=1)
		title='view'
	return render(request, "users/my_profile.html", {'title': title, "item" : item})

@login_required
def postMyProfile(request, id):
	if request.method == 'POST':
		obj = UserProfiles.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		try:
			obj.save()
		except:
			result = 1
			#messages.error(request, "Something went wrong!")
		finally:
			messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/doctors')

#==================== Doctors ==============================================================================
@login_required
def getDoctors(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		items = UserProfiles.objects.filter(occupation='doctor')
		#items = UserProfiles.objects.all()
		title='view'
		#messages.success(request, 'Welcome!')
	#return JsonResponse(items, safe=False)
	#return HttpResponse(items)
	return render(request, "doctors.html", {'title': title, "items" : items})

@login_required
def getCreateDoctor(request):
	if request.method == 'GET':
		title='Create Doctor'
	return render(request, "doctor_create.html", {'title': title})

@login_required
def postDoctors(request):
	if request.method == 'POST':
		obj = UserProfiles()
		obj.name = request.POST['name']
		obj.occupation = 'doctor'
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		obj.dob = request.POST['dob']
		#obj.description = 'demo description'
		#obj.amount = Decimal(request.POST['amount'])
		obj.save()
	return HttpResponseRedirect('/hospital/doctors')

@login_required
def postDoctorAuth(request):
	if request.method == 'POST':
		obj = UserProfiles()
		obj.name = request.POST['name']
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		#obj.description = 'demo description'
		#obj.amount = Decimal(request.POST['amount'])
		obj.save()
	return HttpResponseRedirect('/hospital/doctors')

@login_required
def getDoctorStatus(request, id):
	if request.method == 'GET':
		obj = UserProfiles.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/doctors')

@login_required
def getDoctorDetails(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		serial_no = getGenerateRefKey('UserProfiles', 'DOC')
		current_user = request.user.id
		try:
			#item = UserProfiles.objects.get(id=id)[0]
			#item = UserProfiles.objects.filter(id=id,occupation='doctor').first()
			item = get_object_or_404(UserProfiles, id=id, occupation='doctor')
			if item:
				pass
				if item.occupation == 'doctor':
					user_id = item.users_id
					# Section A
					council = UsersRegistrationCouncils.objects.filter(user_id=user_id).first()
					education = UsersEducations.objects.filter(user_id=user_id)
					clinic = UsersClinics.objects.filter(user_id=user_id).first()
					# Section B
					IdentityProof = UsersIdentityProofs.objects.filter(user_id=user_id)
					Registration = MedicalRegistrationProofs.objects.filter(user_id=user_id)
					Establishment = EstablishmentProofs.objects.filter(user_id=user_id)
					# Section C
					MapLocation = MapLocations.objects.filter(user_id=user_id)
					EstablishmentTiming = EstablishmentTimings.objects.filter(user_id=user_id)
					ConsultationFee = ConsultationFees.objects.filter(user_id=user_id).first()
					DoctorVerification = DoctorVerifications.objects.filter(user_id=user_id)
					context = {
				        'title': title,
				        "serial_no":serial_no, 
						"current_user":current_user,
						"item" : item,
						"council":council,
						"education":education,
						"clinic":clinic,
						"identityproof":IdentityProof,
						"registration":Registration,
						"establishment":Establishment,
						"maplocation":MapLocation,
						"establishmenttiming":EstablishmentTiming,
						"consultationfee":ConsultationFee,
						"verifications":DoctorVerification,
				    }
				else:
					return HttpResponse({"You don\'t have permission to access this resource."}, status=401)
			else:
				return HttpResponse({"Error": "Record does not exist"}, status=404)
				#return HttpResponse(status=404)
		except ObjectDoesNotExist:
			now = datetime.now()
			html = "<html><body><h4>Record does not exist.</h4><p>Time:%s</p></body></html>" % now
			return HttpResponse(html)
			#return HttpResponseNotFound('<h4 style="text-align: center;margin-top: 10%;">Record does not exist</h4>')
			#raise Http404("Record does not exist")
			#return HttpResponse({"Error": "Record does not exist","Error": "Record does not exist"}, status=404)
			#return HttpResponse(status=401)
	return render(request, "doctor_details.html", context)

@login_required
def getDoctorEdit(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = UserProfiles.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "doctor_edit.html", {'title': title, "item" : item})

@login_required
def postDoctorUpdate(request, id):
	if request.method == 'POST':
		obj = UserProfiles.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		try:
			obj.save()
		except:
			result = 1
			#messages.error(request, "Something went wrong!")
		finally:
			messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/doctors')

@login_required
def getDoctorDelete(request, id):
	if request.method == 'GET':
		obj = UserProfiles.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/doctors')

@login_required
def getDoctoVerification(request):
	if request.method == 'POST':
		id = request.POST['id']
		userid = request.POST['user_id']
		obj = UserProfiles.objects.get(pk=id)
		dobj = DoctorVerifications()
		name = request.POST['name']
		dobj.name = name
		dobj.message = request.POST['message']
		dobj.user_id = obj.users_id
		dobj.save()
		if name == 'Aprooved':
			obj.verification = 1
			obj.verification_text = name
			obj.save()
			messages.success(request, 'Profile Aprooved!')
		elif name == 'Rejected':
			obj.verification = 2
			obj.verification_text = name
			obj.save()
			messages.success(request, 'Profile Rejected!')
		else:
			obj.verification = 0
			obj.verification_text = name
			obj.save()
			messages.success(request, f'Profile {name}!')
	#return redirect(f'{redirect_url}?{parameters}')
	return HttpResponseRedirect(f'/hospital/doctor/{id}')

#==================== Patients ==============================================================================
@login_required
def getPatients(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		#items = UserProfiles.objects.all()
		items = UserProfiles.objects.filter(occupation='patient')
		title='view'
	return render(request, "patients/patients.html", {'title': title, "items" : items})

@login_required
def getCreatePatient(request):
	if request.method == 'GET':
		title='Create Doctor'
	return render(request, "patients/patient_create.html", {'title': title})

@login_required
def postStorePatient(request):
	if request.method == 'POST':
		obj = UserProfiles()
		obj.name = request.POST['name']
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		obj.description = request.POST['description']
		#obj.amount = Decimal(request.POST['amount'])
		obj.save()
	return HttpResponseRedirect('/hospital/patients')

@login_required
def postAuthPatient(request):
	if request.method == 'POST':
		obj = UserProfiles()
		obj.name = request.POST['name']
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		#obj.description = 'demo description'
		#obj.amount = Decimal(request.POST['amount'])
		obj.save()
	return HttpResponseRedirect('/hospital/patients')

@login_required
def getStatusPatient(request, id):
	if request.method == 'GET':
		obj = UserProfiles.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/patients')

@login_required
def getViewPatient(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = UserProfiles.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "patients/patient_view.html", {'title': title, "item" : item})

@login_required
def getEditPatient(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = UserProfiles.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "patients/patient_edit.html", {'title': title, "item" : item})

@login_required
def postUpdatePatient(request, id):
	if request.method == 'POST':
		obj = UserProfiles.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.email = request.POST['email']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		obj.address = request.POST['address']
		try:
			obj.save()
		except:
			result = 1
			#messages.error(request, "Something went wrong!")
		finally:
			messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/patients')

@login_required
def getDeletePatient(request, id):
	if request.method == 'GET':
		obj = UserProfiles.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/patients')


#==================== Treatments ==============================================================================
# @login_required
# @method_decorator([login_required], name='dispatch')

@login_required
def getTreatments(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		items = Treatments.objects.all()
		p = Paginator(items, 10)
		page_number = request.GET.get('page')
		try:
		    page_obj = p.get_page(page_number)
		except PageNotAnInteger:
		    page_obj = p.page(1)
		except EmptyPage:
		    page_obj = p.page(p.num_pages)
		title='view'
		today = datetime.now().date()
		context = {'title': title,'items': page_obj,'today':today}
	return render(request, "treatments/treatments.html", context)

# def index(request):
#     posts = Post.objects.all()  # fetching all post objects from database
#     p = Paginator(posts, 5)  # creating a paginator object
#     # getting the desired page number from url
#     page_number = request.GET.get('page')
#     try:
#         page_obj = p.get_page(page_number)  # returns the desired page object
#     except PageNotAnInteger:
#         # if page_number is not an integer then assign the first page
#         page_obj = p.page(1)
#     except EmptyPage:
#         # if page is empty then return last page
#         page_obj = p.page(p.num_pages)
#     context = {'page_obj': page_obj}
#     # sending the page object to index.html
#     return render(request, 'index.html', context)

@login_required
def getCreateTreatments(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "treatments/treatment_create.html", {'title': title})

@login_required
def postStoreTreatments(request):
	if request.method == 'POST':
		obj = Treatments()
		obj.name = request.POST['name']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/treatments')

@login_required
def hotel_image_view(request):
	if request.method == 'POST':
		form = TreatmentForm(request.POST, request.FILES)
		if form.is_valid():
			form.save()
			return redirect('success')
	else:
		form = TreatmentForm()
	return render(request, 'hotel_image_form.html', {'form' : form})

@login_required
def getStatusTreatments(request, id):
	if request.method == 'GET':
		obj = Treatments.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/treatments')

@login_required
def getViewTreatments(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Treatments.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "treatments/treatment_view.html", {'title': title, "item" : item})

@login_required
def getEditTreatments(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Treatments.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "treatments/treatment_edit.html", {'title': title, "item" : item})

@login_required
def postUpdateTreatments(request, id):
	if request.method == 'POST':
		obj = Treatments.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/treatments')

@login_required
def getDeleteTreatments(request, id):
	if request.method == 'GET':
		obj = Treatments.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/treatments')

#==================== Treatment Categories ==============================================================================
@login_required
def getTreatmentCategories(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		items = TreatmentCategories.objects.all()
		p = Paginator(items, 10)
		page_number = request.GET.get('page')
		try:
		    page_obj = p.get_page(page_number)
		except PageNotAnInteger:
		    page_obj = p.page(1)
		except EmptyPage:
		    page_obj = p.page(p.num_pages)
		title='view'
		today = datetime.now().date()
		context = {'title': title, 'items': page_obj, 'today':today}
	return render(request, "treatments_categories/treatments_categories.html", context)

@login_required
def getCreateTreatmentCategories(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "treatments_categories/treatments_categories_create.html", {'title': title})

@login_required
def postStoreTreatmentCategories(request):
	if request.method == 'POST':
		obj = Treatments()
		obj.name = request.POST['name']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/treatment-categories')

@login_required
def getStatusTreatmentCategories(request, id):
	if request.method == 'GET':
		obj = Treatments.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/treatment-categories')

@login_required
def getViewTreatmentCategories(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Treatments.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "treatments/treatments_categories_view.html", {'title': title, "item" : item})

@login_required
def getEditTreatmentCategories(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Treatments.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "treatments/treatments_categories_edit.html", {'title': title, "item" : item})

@login_required
def postUpdateTreatmentCategories(request, id):
	if request.method == 'POST':
		obj = Treatments.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/treatment-categories')

@login_required
def getDeleteTreatmentCategories(request, id):
	if request.method == 'GET':
		obj = Treatments.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/treatment-categories')


# ===== appointment =================================================================================
@login_required
def getAppointments(request):
	if request.method == 'GET':
		data = Appointments.objects.all()
		#xitems = Contacts.objects.filter(is_deleted=False)
		title='view'
	return render(request, "appointments.html", {'title': title, "items" : data})

@login_required
def getAppointmentStatus(request, id):
	if request.method == 'GET':
		apobj = Appointments.objects.get(pk=id)
		apobj.amount = 0.00
		if apobj.status == 0:
			apobj.status = 1
			apobj.save()
		else:
			apobj.status = 0
			apobj.save()
	return HttpResponseRedirect('/hospital/appointments')

@login_required
def getAppointmentDetails(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Appointments.objects.filter(id=id)[0]
			#item = Appointments.objects.get(pk=id)
			#item = Appointments.objects.filter(id=1)[0]
			#item = Appointments.objects.filter(pk=id)
			#item = get_object_or_404(Appointments, user_id=id)
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "appointment_details.html", {'title': title, "item" : item})

@login_required
def getCreateAppointments(request):
	if request.method == 'GET':
		title='Create Doctor'
	return render(request, "create_appointment.html", {'title': title})

@login_required
def postAppointments(request):
	if request.method == 'POST':
		obj = Appointments()
		obj.name = request.POST['name']
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		#obj.age = request.POST['age']
		obj.address = request.POST['address']
		obj.doctor_id = request.POST['doctor_id']
		#obj.doctor_appointment_at = request.POST['doctor_appointment_at']
		obj.illness_information = request.POST['illness_information']
		obj.description = request.POST['description']
		#obj.amount = Decimal(request.POST['amount'])
		obj.save()
	return HttpResponseRedirect('/hospital/appointments')

@login_required
def getAppointmentEdit(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Appointments.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "appointment_edit.html", {'title': title, "item" : item})

@login_required
def postAppointmentUpdate(request, id):
	if request.method == 'POST':
		obj = Appointments.objects.get(pk=id)
		obj.name = request.POST['name']
		#obj.amount = 12.00
		obj.mobile = request.POST['mobile']
		obj.sex = request.POST['sex']
		#obj.age = request.POST['age']
		obj.address = request.POST['address']
		obj.doctor_id = request.POST['doctor_id']
		#obj.doctor_appointment_at = request.POST['doctor_appointment_at']
		obj.illness_information = request.POST['illness_information']
		obj.description = request.POST['description']
		obj.amount = Decimal(request.POST['amount'])
		#obj.save()
		# if obj.save():
		# 	messages.success(request, 'Successfully updated!')
		# else:
		# 	messages.error(request, "Something went wrong!")
		#result = obj.save()

		try:
			obj.save()
		except:
			result = 1
			#messages.error(request, "Something went wrong!")
		finally:
			messages.success(request, 'Successfully updated!')

	#return JsonResponse('result', safe=False)
	#return HttpResponse(result)
	return HttpResponseRedirect('/hospital/appointments')

@login_required
def getAppointmentx(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		#xitems = Contacts.objects.filter(is_deleted=False)
		title='view'
	return render(request, "doctors.html", {'title': title, "items" : users})

#==================== Plans ==============================================================================
@login_required
def getPlans(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		today = datetime.now().date()
		items = SubscriptionPlans.objects.all()
		title='view'
	return render(request, "plans/plans.html", {'title': title, "items" : items, "today":today})

@login_required
def getCreatePlans(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "plans/plan_create.html", {'title': title})

@login_required
def postStorePlans(request):
	if request.method == 'POST':
		obj = SubscriptionPlans()
		obj.name = request.POST['name']
		obj.amount = request.POST['amount']
		obj.expiry_in_months = request.POST['expiry_in_months']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/plans')

@login_required
def getStatusPlans(request, id):
	if request.method == 'GET':
		obj = SubscriptionPlans.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/plans')

@login_required
def getViewPlans(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = SubscriptionPlans.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "plans/plan_view.html", {'title': title, "item" : item})

@login_required
def getEditPlans(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = SubscriptionPlans.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "plans/plan_edit.html", {'title': title, "item" : item})

@login_required
def postUpdatePlans(request, id):
	if request.method == 'POST':
		obj = SubscriptionPlans.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		try:
			obj.save()
		except:
			result = 1
			#messages.error(request, "Something went wrong!")
		finally:
			messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/plans')

@login_required
def getDeletePlans(request, id):
	if request.method == 'GET':
		obj = SubscriptionPlans.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/plans')

# ===== Plan Subscriptions =================================================================================
@login_required
def getPlanSubscriptions(request):
	if request.method == 'GET':
		# SubscriptionHistory , hospital_subscriptionplans
		items = SubscriptionHistory.objects.all()
		#items = SubscriptionHistory.objects.filter(is_deleted=0).distinct().prefetch_related("plan_id").order_by("id")[:20]
		#items = SubscriptionHistory.objects.filter(is_deleted=0).select_related('subscriptionplans')
		xitems = SubscriptionPlans.objects.select_related('subscriptionplans').all()
		#cursor = connection.cursor()    
		#cursor.execute("select a.id as id, b.name from hospital_subscriptionhistory a inner join hospital_subscriptionplans b on a.plan_id=b.id")
		#cursor.execute("select a.id as id, b.name as name from hospital_subscriptionhistory a join hospital_subscriptionplans b on a.plan_id=b.id")
		# cursor.execute("select * from hospital_subscriptionhistory")
		# row = cursor.fetchone()
		# print('Hi')
		# print(row)
		# var_dump(row)
		title='view'
		today = datetime.now().date()
	return render(request, "plans/plan_subscriptions.html", {'title': title, "items" : items,"today":today})

@login_required
def getStatusPlanSubscriptions(request, id):
	if request.method == 'GET':
		obj = SubscriptionHistory.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/plan-subscriptions')

@login_required
def getViewPlanSubscriptions(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = SubscriptionHistory.objects.filter(id=id)[0]
			plans = SubscriptionPlans.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "plans/plan_subscriptions_view.html", {'title': title, "item" : item, "plans" : plans})

# ===== masters =================================================================================
@login_required
def getCategories(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		#xitems = Contacts.objects.filter(is_deleted=False)
		title='view'
	return render(request, "category.html", {'title': title, "items" : users})

@login_required
def getSubCategories(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		#xitems = Contacts.objects.filter(is_deleted=False)
		title='view'
	return render(request, "subcategory.html", {'title': title, "items" : users})

# ===== Settings =================================================================================
@login_required
def getSettings(request):
	if request.method == 'GET':
		User = get_user_model()
		users = User.objects.all()
		#xitems = Contacts.objects.filter(is_deleted=False)
		title='view'
	return render(request, "settings/setting.html", {'title': title, "items" : users})



#=====================================================================================	
#	Website URL and Functions
#=====================================================================================	

def getContact(request):
	print(request.GET)
	return render(request, "index.html")

def editContact(request):
	pass

def updateContact(request):
	pass

def getDeiele(request, id):
	#if request.method == 'Post':
	if request.method == 'GET':
		obj = Contacts.objects.get(pk=id)
		obj.is_deleted = 1
		obj.save()
		# obj.delete()
	return HttpResponseRedirect('/view-contact')

#==================== Blogs ==============================================================================
@login_required
def getBlogs(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		items = Blogs.objects.all()
		title='view'
	return render(request, "website/blogs/blog.html", {'title': title, "items" : items})

@login_required
def getCreateBlogs(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "website/blogs/blog_create.html", {'title': title})

@login_required
def postStoreBlogs(request):
	if request.method == 'POST':
		obj = Blogs()
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/blogs')

@login_required
def getStatusBlogs(request, id):
	if request.method == 'GET':
		obj = Blogs.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/blogs')

@login_required
def getViewBlogs(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Blogs.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/blogs/blog_view.html", {'title': title, "item" : item})

@login_required
def getEditBlogs(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Blogs.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/blogs/blog_edit.html", {'title': title, "item" : item})

@login_required
def postUpdateBlogs(request, id):
	if request.method == 'POST':
		obj = Blogs.objects.get(pk=id)
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/blogs')

@login_required
def getDeleteBlogs(request, id):
	if request.method == 'GET':
		obj = Blogs.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/blogs')

#==================== Banners ==============================================================================
@login_required
def getBanners(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		items = Banners.objects.all()
		title='view'
	return render(request, "website/banners/banner.html", {'title': title, "items" : items})

@login_required
def getCreateBanners(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "website/banners/banner_create.html", {'title': title})

@login_required
def postStoreBanners(request):
	if request.method == 'POST':
		obj = Banners()
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/banners')

@login_required
def getStatusBanners(request, id):
	if request.method == 'GET':
		obj = Banners.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/banners')

@login_required
def getViewBanners(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Banners.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/banners/banner_view.html", {'title': title, "item" : item})

@login_required
def getEditBanners(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Banners.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/banners/banner_edit.html", {'title': title, "item" : item})

@login_required
def postUpdateBanners(request, id):
	if request.method == 'POST':
		obj = Banners.objects.get(pk=id)
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/banners')

@login_required
def getDeleteBanners(request, id):
	if request.method == 'GET':
		obj = Banners.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/banners')

#==================== pages ==============================================================================
@login_required
def getPages(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		items = Pages.objects.all()
		title='view'
	return render(request, "website/pages/pages.html", {'title': title, "items" : items})

@login_required
def getCreatePages(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "website/pages/page_create.html", {'title': title})

@login_required
def postStorePages(request):
	if request.method == 'POST':
		obj = Pages()
		obj.name = request.POST['name']
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		obj.long_description = request.POST['long_description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/pages')

@login_required
def getStatusPages(request, id):
	if request.method == 'GET':
		obj = Pages.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/pages')

@login_required
def getViewPages(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Pages.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/pages/page_view.html", {'title': title, "item" : item})

@login_required
def getEditPages(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Pages.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/pages/page_edit.html", {'title': title, "item" : item})

@login_required
def postUpdatePages(request, id):
	if request.method == 'POST':
		obj = Pages.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		obj.long_description = request.POST['long_description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/pages')

@login_required
def getDeletePages(request, id):
	if request.method == 'GET':
		obj = Pages.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/pages')

#==================== Policy ==============================================================================
@login_required
def getPolicy(request):
	if request.method == 'GET':
		#items = UserProfiles.objects.filter(is_deleted=False)
		items = Policies.objects.all()
		title='view'
	return render(request, "website/policy/policy.html", {'title': title, "items" : items})

@login_required
def getCreatePolicy(request):
	if request.method == 'GET':
		title='Create Treatments'
	return render(request, "website/policy/policy_create.html", {'title': title})

@login_required
def postStorePolicy(request):
	if request.method == 'POST':
		obj = Policies()
		obj.name = request.POST['name']
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		obj.long_description = request.POST['long_description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully Inserted!')
	return HttpResponseRedirect('/hospital/policy')

@login_required
def getStatusPolicy(request, id):
	if request.method == 'GET':
		obj = Policies.objects.get(pk=id)
		if obj.status == 0:
			obj.status = 1
			obj.save()
			messages.success(request, 'Status Activated!')
		else:
			obj.status = 0
			obj.save()
			messages.error(request, 'Status Deactivated!')
	return HttpResponseRedirect('/hospital/policy')

@login_required
def getViewPolicy(request, id):
	if request.method == 'GET':
		title='Show Appointment Details'
		try:
			item = Policies.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/policy/policy_view.html", {'title': title, "item" : item})

@login_required
def getEditPolicy(request, id):
	if request.method == 'GET':
		title='Edit Appointment Details'
		try:
			item = Policies.objects.filter(id=id)[0]
		except ObjectDoesNotExist:
			return HttpResponse(status=404)
	return render(request, "website/policy/policy_edit.html", {'title': title, "item" : item})

@login_required
def postUpdatePolicy(request, id):
	if request.method == 'POST':
		obj = Policies.objects.get(pk=id)
		obj.name = request.POST['name']
		obj.title = request.POST['title']
		obj.description = request.POST['description']
		obj.long_description = request.POST['long_description']
		if len(request.FILES) != 0:
			obj.primary_image = request.FILES['primary_image']
		obj.save()
		messages.success(request, 'Successfully updated!')
	return HttpResponseRedirect('/hospital/policy')

@login_required
def getDeletePolicy(request, id):
	if request.method == 'GET':
		obj = Policies.objects.get(pk=id)
		if obj.is_deleted == 0:
			obj.is_deleted = 1
			obj.save()
			messages.success(request, 'Deleted!')
	return HttpResponseRedirect('/hospital/policy')


##########################################################################################
#def getpdfFun(self, request, *args, **kwargs):
#def getpdfFun(request, *args, **kwargs):
  #   data = {
		# 'today': date.today(), 
		# 'amount': 39.99,
		# 'customer_name': 'Cooper Mann',
		# 'order_id': 1233434,
  #   }
  #   pdf = render_to_pdf('pdf/invoice.html', data)
  #   return HttpResponse(pdf, content_type='application/pdf')
def getGenerateRefKey(name, srt_key):
	last_id = UserProfiles.objects.last().id
	# res = Image.objects.aggregate(max_id=Max('pk'))
	# last_id = res.get('max_id')
	# last_id = 20
	if last_id<9:
		result = srt_key+'000'+str(last_id+1)
	elif last_id<99 and last_id>=9:
		result = srt_key+'00'+str(last_id+1)
	elif last_id<999 and last_id>=99:
		result = srt_key+'0'+str(last_id+1)
	elif last_id>=999:
		result = srt_key+str(last_id+1)
	return result
    

def var_dump(var, prefix=''):
	"""
	You know you're a php developer when the first thing you ask for
	when learning a new language is 'Where's var_dump?????'
	"""
	my_type = '[' + var.__class__.__name__ + '(' + str(len(var)) + ')]:'
	print(prefix, my_type, sep='')
	prefix += '    '
	for i in var:
		if type(i) in (list, tuple, dict, set):
			var_dump(i, prefix)
		else:
			if isinstance(var, dict):
				print(prefix, i, ': (', var[i].__class__.__name__, ') ', var[i], sep='')
			else:
				print(prefix, '(', i.__class__.__name__, ') ', i, sep='')

#====== end Test ===============================================================


