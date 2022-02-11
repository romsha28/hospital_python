from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from datetime import date
from django.utils import timezone
from django.contrib.auth.models import User
# from django.contrib.gis.db import models
# from django.views.decorators.csrf import csrf_protect
# from hospital.models import * 
from hospital.models import Treatments

SEX_CHOICES = (
    ('male','Male'),
    ('female', 'Female'),
    ('other','Other'),
)

Occupation = (
    ('patient','Patient'),
    ('doctor', 'Doctor'),
    ('other','Other'),
)

# Section A: Profile details
# 1. Doctor’s basic details, 
# 2. Medical registration, 
# 3. Education qualification, 
# 4. Establishment details. [Clinic info]

class UserProfiles(models.Model):
	name = models.CharField(max_length=100, null=True, blank=True)
	title = models.CharField(max_length=120, null=True, blank=True, default="General User")
	about = models.TextField(null=True, blank=True)
	work_experience = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	dob = models.DateField(null=True, blank=True)
	occupation = models.CharField(max_length=20, choices=Occupation, default='patient')
	specialties = models.CharField(max_length=150, null=True, blank=True)
	specialty = models.ForeignKey(Treatments, on_delete=models.CASCADE, null=True, blank=True, default=1)
	language = models.CharField(max_length=250, null=True, blank=True)
	language_id = models.IntegerField(null=True, blank=True)
	photo = models.FileField('photo', upload_to="profile_photo/", null=True, blank=True)
	sex = models.CharField(max_length=20, choices=SEX_CHOICES, default='male')
	email = models.EmailField(max_length = 150, null=True, blank=True)
	#mobile = PhoneNumberField(blank=False, unique=True, region="IN")
	phone_code = models.CharField(max_length=20, null=True, blank=True)
	mobile = models.CharField(max_length=20, null=True, blank=True)
	mobile1 = models.CharField(max_length=20, null=True, blank=True)
	blood_group = models.CharField(max_length=50, null=True, blank=True)
	locality = models.CharField(max_length=100, null=True, blank=True)
	address = models.CharField(max_length=100, null=True, blank=True)
	address2 = models.CharField(max_length=100, null=True, blank=True)
	city = models.CharField(max_length=100, null=True, blank=True)
	state = models.CharField(max_length=100, null=True, blank=True)
	country = models.CharField(max_length=100, null=True, blank=True)
	pincode = models.IntegerField(null=True, blank=True)
	latitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	longitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	section_flag = models.TextField(null=True, blank=True, default='[False, False, False]')
	flag_count = models.IntegerField(null=True, blank=True, default=0)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='profile_user')
	users_id = models.IntegerField(null=True, blank=True)
	profile_id = models.IntegerField(null=True, blank=True)
	verification = models.IntegerField(null=True, blank=True, default=0)
	verification_text = models.CharField(max_length=20, null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)
	
	def __str__(self):
		return self.name
#####################################  profile links  #####################################

class Address(models.Model):
	user_id = models.IntegerField(null=True, blank=True)
	subject = models.CharField(max_length=150, null=True, blank=True, default="Home Address")
	locality = models.CharField(max_length=100, null=True, blank=True)
	address = models.CharField(max_length=100, null=True, blank=True)
	address2 = models.CharField(max_length=100, null=True, blank=True)
	city = models.CharField(max_length=100, null=True, blank=True)
	state = models.CharField(max_length=100, null=True, blank=True)
	country = models.CharField(max_length=100, null=True, blank=True)
	pincode = models.IntegerField(null=True, blank=True)
	latitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	longitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	image = models.FileField('image', upload_to="address_image/", null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "Address"

	def __str__(self):
		return self.subject

class UserReviews(models.Model):
	profile = models.ForeignKey(UserProfiles, on_delete=models.CASCADE, null=True, blank=True, related_name='profile')
	patient = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='patient')
	doctor = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='doctor')
	message = models.TextField(null=True, blank=True)
	ratting = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UserReviews"

	def __str__(self):
		return self.message

class FeverateDoctors(models.Model):
	profile = models.ForeignKey(UserProfiles, on_delete=models.CASCADE, null=True, blank=True, related_name='fd_profile')
	patient = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='fd_patient')
	doctor = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='fd_doctor')
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "FeverateDoctor"

	def __str__(self):
		return self.profile

class RecommendedDoctors(models.Model):
	profile = models.ForeignKey(UserProfiles, on_delete=models.CASCADE, null=True, blank=True, related_name='rd_profile')
	patient = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='rd_patient')
	doctor = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='rd_doctor')
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "RecommendedDoctors"

	def __str__(self):
		return self.profile

class FamilyMemberProfiles(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="fm_user")
	name = models.CharField(max_length=100, null=True, blank=True)
	about = models.TextField(null=True, blank=True)
	dob = models.DateField(null=True, blank=True)
	photo = models.FileField('photo', upload_to="profile_photo/", null=True, blank=True)
	sex = models.CharField(max_length=20, choices=SEX_CHOICES, default='male')
	email = models.EmailField(max_length = 150, null=True, blank=True)
	mobile = models.CharField(max_length=20, null=True, blank=True)
	blood_group = models.CharField(max_length=50, null=True, blank=True)
	blood_relationship = models.CharField(max_length=50, null=True, blank=True)
	locality = models.CharField(max_length=100, null=True, blank=True)
	address = models.CharField(max_length=100, null=True, blank=True)
	address2 = models.CharField(max_length=100, null=True, blank=True)
	city = models.CharField(max_length=100, null=True, blank=True)
	state = models.CharField(max_length=100, null=True, blank=True)
	country = models.CharField(max_length=100, null=True, blank=True)
	pincode = models.IntegerField(null=True, blank=True)
	latitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	longitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	language = models.CharField(max_length=250, null=True, blank=True)
	language_id = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "FamilyMemberProfiles"
	
	def __str__(self):
		return self.name

#####################################  end profile links  #####################################

# A projected coordinate system (only valid for South Texas!)
# is used, units are in meters.
# class SouthTexasCity(models.Model):
#     name = models.CharField(max_length=30)
#     point = models.PointField(srid=32140)

class UsersRegistrationCouncils(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	registration_no = models.CharField(max_length=50, null=True, blank=True)
	registration_year = models.CharField(max_length=100, null=True, blank=True)
	file = models.FileField('file', upload_to="registration_councils_docs/", null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	#user_id = models.IntegerField(null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	#profile = models.ForeignKey(UserProfiles, on_delete=models.CASCADE, null=True, blank=True)
	profile_id = models.IntegerField(null=True, blank=True)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersRegistrationCouncils"

	def __str__(self):
		return self.name

class UsersEducations(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="univercity text")
	univercity = models.CharField(max_length=150, null=True, blank=True)
	college = models.CharField(max_length=150, null=True, blank=True)
	board = models.CharField(max_length=150, null=True, blank=True)
	grade = models.IntegerField(null=True, blank=True)
	passing_year = models.CharField(max_length=10, null=True, blank=True)
	from_at = models.DateField(null=True, blank=True)
	end_at = models.DateField(null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersEducations"

	def __str__(self):
		return self.name

class UsersClinics(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	clinic_id = models.CharField(max_length=50, null=True, blank=True)
	about = models.CharField(max_length=150, null=True, blank=True, default="subject text")
	description = models.TextField(null=True, blank=True)
	clinic_fee = models.IntegerField(null=True, blank=True)
	locality = models.CharField(max_length=100, null=True, blank=True)
	address = models.CharField(max_length=100, null=True, blank=True)
	address2 = models.CharField(max_length=100, null=True, blank=True)
	city = models.CharField(max_length=100, null=True, blank=True)
	state = models.CharField(max_length=100, null=True, blank=True)
	country = models.CharField(max_length=100, null=True, blank=True)
	pincode = models.IntegerField(null=True, blank=True)
	latitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	longitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	image = models.FileField('image', upload_to="clinics_docs/", null=True, blank=True)
	file = models.FileField('file', upload_to="clinics_docs/", null=True, blank=True)
	from_at = models.TimeField(auto_now=False, auto_now_add=False, null=True, blank=True)
	to_at = models.TimeField(auto_now=False, auto_now_add=False, null=True, blank=True)
	status = models.BooleanField(default=False)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersAchievements"

	def __str__(self):
		return self.name

class EstablishmentTimings(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="Name of days")
	start_at = models.TimeField(auto_now=False, auto_now_add=False, null=True, blank=True)
	end_at = models.TimeField(auto_now=False, auto_now_add=False, null=True, blank=True)
	message = models.CharField(max_length=150, null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True, related_name='clinic_time_user')
	clinic = models.ForeignKey(UsersClinics, on_delete=models.CASCADE, related_name="est_clinic", null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "EstablishmentTimings"

	def __str__(self):
		return self.name

class UsersClinicImages(models.Model):
	clinic = models.ForeignKey(UsersClinics, on_delete=models.CASCADE, related_name="clinic")
	subject = models.CharField(max_length=150, null=True, blank=True, default="Home Address")
	image = models.FileField('image', upload_to="clinic_image/", null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersClinicImages"

	def __str__(self):
		return self.subject

# Section B: Profile verification
# 1. Doctor identity proof, 
# 2. Medical Registration Proof, 
# 3. establishment ownership proof

class UsersIdentityProofs(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="univercity text")
	identity_proof_no = models.CharField(max_length=50, null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	#user_id = models.IntegerField(null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersIdentityProofs"

	def __str__(self):
		return self.name

class MedicalRegistrationProofs(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="univercity text")
	identity_proof_no = models.CharField(max_length=50, null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	#user_id = models.IntegerField(null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "MedicalRegistrationProofs"

	def __str__(self):
		return self.name

class EstablishmentProofs(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="identity text")
	identity_proof_type = models.CharField(max_length=50, null=True, blank=True, default="identity proof text")
	identity_proof_no = models.CharField(max_length=50, null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	#user_id = models.IntegerField(null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "EstablishmentProofs"

	def __str__(self):
		return self.name

# Section C: Start getting patients
# 1. Location, 
# 2. Timings, 
# 3. Fees

class MapLocations(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="identity text")
	message = models.CharField(max_length=150, null=True, blank=True)
	locality = models.CharField(max_length=100, null=True, blank=True)
	address = models.CharField(max_length=100, null=True, blank=True)
	address2 = models.CharField(max_length=100, null=True, blank=True)
	city = models.CharField(max_length=100, null=True, blank=True)
	state = models.CharField(max_length=100, null=True, blank=True)
	country = models.CharField(max_length=100, null=True, blank=True)
	pincode = models.IntegerField(null=True, blank=True)
	latitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	longitude_coordinate = models.CharField(max_length=100, null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	user_id = models.IntegerField(null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "MapLocations"

	def __str__(self):
		return self.name

class ConsultationFees(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="identity text")
	amount = models.DecimalField(max_digits=8, decimal_places=2, default=0)
	start_at = models.DateTimeField(null=True, blank=True)
	end_at = models.DateTimeField(null=True, blank=True)
	message = models.CharField(max_length=150, null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	user_id = models.IntegerField(null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "ConsultationFees"

	def __str__(self):
		return self.name

class DoctorVerifications(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	message = models.TextField(null=True, blank=True)
	issues_id = models.IntegerField(null=True, blank=True)
	user_id = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersIssues"

	def __str__(self):
		return self.name	

##############################################################################################

class UsersIssues(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	subject = models.CharField(max_length=150, null=True, blank=True, default="subject text")
	description = models.TextField(null=True, blank=True)
	issues_id = models.IntegerField(null=True, blank=True)
	user_id = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersIssues"

	def __str__(self):
		return self.name	

class UsersWorkExperiences(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="org name text")
	description = models.TextField(null=True, blank=True)
	work_experience = models.IntegerField(null=True, blank=True)
	doj = models.DateField(null=True, blank=True)
	dol = models.DateField(null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	status = models.BooleanField(default=False)
	user_id = models.IntegerField(null=True, blank=True)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersWorkExperiences"

	def __str__(self):
		return self.name

class UsersSpecializations(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	subject = models.CharField(max_length=150, null=True, blank=True, default="subject text")
	description = models.TextField(null=True, blank=True)
	univercity = models.CharField(max_length=150, null=True, blank=True)
	college = models.CharField(max_length=150, null=True, blank=True)
	bord = models.CharField(max_length=150, null=True, blank=True)
	grade = models.IntegerField(null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	status = models.BooleanField(default=False)
	user_id = models.IntegerField(null=True, blank=True)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersSpecializations"

	def __str__(self):
		return self.name

class UsersAchievements(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	subject = models.CharField(max_length=150, null=True, blank=True, default="subject text")
	description = models.TextField(null=True, blank=True)
	univercity = models.CharField(max_length=150, null=True, blank=True)
	college = models.CharField(max_length=150, null=True, blank=True)
	bord = models.CharField(max_length=150, null=True, blank=True)
	grade = models.IntegerField(null=True, blank=True)
	file = models.FileField('file', upload_to="doctors_docs/", null=True, blank=True)
	status = models.BooleanField(default=False)
	user_id = models.IntegerField(null=True, blank=True)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "UsersAchievements"

	def __str__(self):
		return self.name

##############################################################################################
# PatientDocuments
# DoctorReceipts

##############################################################################################

class ModelMenus(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="menu name ...")
	slug = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "ModelMenus"

	def __str__(self):
		return self.name

class ModelSubMenus(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="submenu name ...")
	menu = models.ForeignKey(ModelMenus, on_delete=models.CASCADE)
	slug = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "ModelSubMenus"

	def __str__(self):
		return self.name

class ModelFunctions(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="function name ...")
	slug = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "ModelFunctions"

	def __str__(self):
		return self.name

class ModelRights(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="function name ...")
	User = models.ForeignKey(User, on_delete=models.CASCADE)
	menu = models.ForeignKey(ModelMenus, on_delete=models.CASCADE)
	submenu = models.ForeignKey(ModelSubMenus, on_delete=models.CASCADE)
	function = models.ForeignKey(ModelFunctions, on_delete=models.CASCADE)
	slug = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "ModelRights"

	def __str__(self):
		return self.name


##############################################################################################

class ModelLanguages(models.Model):
	code = models.CharField(max_length=10, null=False, blank=False)
	value = models.CharField(max_length=50, null=False, blank=False)
	description = models.TextField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "ModelLanguages"

	def __str__(self):
		return self.name


##############################################################################################

