from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from datetime import date
from django.utils import timezone
from django.contrib.auth.models import User
# from django.views.decorators.csrf import csrf_protect

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
	#user = models.OneToOneField(User, on_delete=models.CASCADE, related_name="user_profile")
	name = models.CharField(max_length=100, null=True, blank=True)
	title = models.CharField(max_length=120, null=True, blank=True, default="General User")
	about = models.TextField(null=True, blank=True)
	work_experience = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	dob = models.DateField(null=True, blank=True)
	occupation = models.CharField(max_length=20, choices=Occupation, default='patient')
	specialties = models.CharField(max_length=150, null=True, blank=True)
	photo = models.CharField(max_length=100, null=True, blank=True)
	sex = models.CharField(max_length=20, choices=SEX_CHOICES, default='male')
	email = models.EmailField(max_length = 254, unique = True)
	#mobile = PhoneNumberField(blank=False, unique=True, region="IN")
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
	#user = models.OneToOneField(User, on_delete=models.CASCADE, related_name="user_profile")
	users_id = models.IntegerField(null=True, blank=True)
	profile_id = models.IntegerField(null=True, blank=True)
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

class UsersRegistrationCouncils(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="Issues text")
	registration_no = models.CharField(max_length=50, null=True, blank=True)
	registration_year = models.CharField(max_length=100, null=True, blank=True)
	file = models.FileField('file', upload_to="registration_councils_docs/", null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	#user_id = models.IntegerField(null=True, blank=True)
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	profile = models.ForeignKey(UserProfiles, on_delete=models.CASCADE, null=True, blank=True)
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

# Section B: Profile verification
# 1. Doctor identity proof, 
# 2. Medical Registration Proof, 
# 3. establishment ownership proof

class UsersIdentityProofs(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="univercity text")
	identity_proof_no = models.CharField(max_length=50, null=True, blank=True)
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
		verbose_name = "UsersIdentityProofs"

	def __str__(self):
		return self.name

class MedicalRegistrationProofs(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="univercity text")
	identity_proof_no = models.CharField(max_length=50, null=True, blank=True)
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
		verbose_name = "MedicalRegistrationProofs"

	def __str__(self):
		return self.name

class EstablishmentProofs(models.Model):
	name = models.CharField(max_length=150, null=True, blank=True, default="identity text")
	identity_proof_type = models.CharField(max_length=50, null=True, blank=True, default="identity proof text")
	identity_proof_no = models.CharField(max_length=50, null=True, blank=True)
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

class EstablishmentTimings(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="identity text")
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
		verbose_name = "EstablishmentTimings"

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
