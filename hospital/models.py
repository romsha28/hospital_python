from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from datetime import date
from django.utils import timezone

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

PAYMENT_STATUS = (
    ('Payment-Not-Completed','Payment Not Completed'),
    ('Payment-Completed', 'Payment Completed'),
    ('SUCCESS','SUCCESS'),
    ('PENDING', 'PENDING'),
    ('CANCEL','CANCEL'),
)

PAYMENT_TYPE = (
    ('Deposit','Deposit'),
    ('Withdraw', 'Withdraw'),
    ('None','None'),
)

PAYMENT_METHOD = (
    ('cod','COD'),
    ('flutterwave', 'FLUTTERWAVE'),
    ('STRIPE', 'STRIPE'),
    ('other','Other'),
)

PAYMENT_GETWAY = (
    ('cod','COD'),
    ('flutterwave', 'FLUTTERWAVE'),
    ('STRIPE', 'STRIPE'),
    ('other','Other'),
)

class Contacts(models.Model):
	name = models.CharField(max_length=100)
	subject = models.CharField(max_length=150, null=True, blank=True, default="Contact For Best Service")
	message = models.TextField(null=True, blank=True)
	email = models.EmailField(max_length = 150, null=True, blank=True)
	mobile = PhoneNumberField(blank=False, region="IN")
	#mobile = models.CharField(max_length=20, blank=False, unique=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)

	class Meta:
		verbose_name = "Contacts"

	def __str__(self):
		return self.name

class Appointments(models.Model):
	patient_id = models.IntegerField(null=True, blank=True)
	name = models.CharField(max_length=100)
	title = models.CharField(max_length=120, null=True, blank=True, default="General user as patient")
	description = models.TextField(null=True, blank=True)
	dob = models.DateField(null=True, blank=True)
	occupation = models.CharField(max_length=20, choices=Occupation, default='patient')
	sex = models.CharField(max_length=20, choices=SEX_CHOICES, default='male')
	email = models.EmailField(max_length = 254, null=True, blank=True)
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
	doctor_id = models.IntegerField(null=True, blank=True)
	appointment_id = models.CharField(max_length=100, null=True, blank=True)
	doctor_appointment_at = models.DateTimeField(null=True, blank=True)
	translation_id = models.CharField(max_length=100, null=True, blank=True)
	amount = models.DecimalField(max_digits=6, decimal_places=2, default=0.00)
	payment_status = models.CharField(max_length=50, choices=PAYMENT_STATUS, default='Payment-Not-Completed')
	payment_type = models.CharField(max_length=20, choices=PAYMENT_METHOD, default='cod')
	illness_information = models.CharField(max_length=100, null=True, blank=True)
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

class Blogs(models.Model):
	title = models.CharField(max_length=200, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	long_description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=150, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="blogs/", null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)
	
	def __str__(self):
		return self.title

class Banners(models.Model):
	title = models.CharField(max_length=200, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	long_description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=150, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="banners/", null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)
	
	def __str__(self):
		return self.title

class Pages(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	title = models.CharField(max_length=200, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	long_description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=150, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="page_images/", null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class Policies(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	title = models.CharField(max_length=200, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	long_description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=150, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="page_images/", null=True, blank=True)
	policy_file = models.FileField('primary_image', upload_to="policy_files/", null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class Categories(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.CharField(max_length=150, null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class Subcategories(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.CharField(max_length=150, null=True, blank=True)
	Category_id = models.IntegerField(null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class Treatments(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	#primary_image = models.CharField(max_length=150, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="treatments/", null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class TreatmentCategories(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="treatments/", null=True, blank=True)
	treatment_id = models.IntegerField(null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class SubscriptionPlans(models.Model):
	plan_key = models.CharField(max_length=50, null=True, blank=True)
	name = models.CharField(max_length=100, null=True, blank=True, default="Basic Panal")
	title = models.CharField(max_length=150, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	amount = models.DecimalField(max_digits=8, decimal_places=2, default=0)
	start_at = models.DateTimeField(null=True, blank=True)
	stop_at = models.DateTimeField(null=True, blank=True)
	expiry_in_months = models.IntegerField(null=True, blank=True)
	discount = models.IntegerField(null=True, blank=True)
	day_appointments = models.IntegerField(null=True, blank=True)
	weekly_appointments = models.IntegerField(null=True, blank=True)
	total_appointments = models.IntegerField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.FileField('primary_image', upload_to="treatments/", null=True, blank=True)
	doctor_id = models.IntegerField(null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class SubscriptionHistory(models.Model):
	order_id = models.CharField(max_length=50, null=True, blank=True)
	joiner_id = models.IntegerField(null=True, blank=True)
	plan = models.ForeignKey(SubscriptionPlans, on_delete=models.CASCADE, related_name='subscriptionplans')
	#plan_id = models.IntegerField(null=True, blank=True)
	doctor_id = models.IntegerField(null=True, blank=True)
	remarks = models.TextField(null=True, blank=True)
	total_appointments = models.IntegerField(null=True, blank=True)
	completed_appointments = models.IntegerField(null=True, blank=True)
	expiry_in_months = models.IntegerField(null=True, blank=True)
	join_at = models.DateTimeField(null=True, blank=True)
	break_at = models.DateTimeField(null=True, blank=True)
	expiry_at = models.DateTimeField(null=True, blank=True)
	plan_amount = models.DecimalField(max_digits=8, decimal_places=2, default=0)
	plan_discount = models.IntegerField(null=True, blank=True)
	paid_amount = models.DecimalField(max_digits=8, decimal_places=2, default=0)
	payment_status = models.CharField(max_length=50, null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

#=====================================================================================
class AppModels(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.CharField(max_length=150, null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class PaymentModes(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.CharField(max_length=150, null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class PaymentGetways(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	description = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.CharField(max_length=150, null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
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

class Translations(models.Model):
	translation_id = models.CharField(max_length=200)
	amount = models.DecimalField(max_digits=8, decimal_places=2, default=0)
	translation_type = models.CharField(max_length=50)
	model_name = models.CharField(max_length=100)
	payment_status = models.CharField(max_length=50, null=True, blank=True)
	payment_type = models.CharField(max_length=20, choices=PAYMENT_TYPE, default='None')
	payment_mode = models.CharField(max_length=50, null=True, blank=True)
	payment_method = models.CharField(max_length=50, null=True, blank=True)
	payment_getway = models.CharField(max_length=50, null=True, blank=True)
	payment_note = models.CharField(max_length=200, null=True, blank=True)
	sender_user_id = models.IntegerField(null=True, blank=True)
	sender_name = models.CharField(max_length=100, null=True, blank=True)
	sender_email = models.EmailField(max_length = 100, null=True, blank=True)
	recever_user_id = models.IntegerField(null=True, blank=True)
	recever_name = models.CharField(max_length=100, null=True, blank=True)
	recever_email = models.EmailField(max_length = 100, null=True, blank=True)
	reference_code = models.CharField(max_length=100, null=True, blank=True)
	error_code = models.CharField(max_length=50, null=True, blank=True)
	description = models.TextField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	updated_by = models.IntegerField(null=True, blank=True)
	deleted_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)
	updated_at = models.DateTimeField(null=True, blank=True)
	deleted_at = models.DateTimeField(null=True, blank=True)
	
	def __str__(self):
		return self.translation_id

class UsersLogs(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	email = models.EmailField(max_length = 150, null=True, blank=True)
	mobile = PhoneNumberField(null=True, blank=True, region="IN")
	ip_address = models.CharField(max_length=50, null=True, blank=True)
	device = models.CharField(max_length=50, null=True, blank=True)
	os = models.CharField(max_length=50, null=True, blank=True)
	browser = models.CharField(max_length=50, null=True, blank=True)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)

	def __str__(self):
		return self.name

class HistoryLogs(models.Model):
	name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	model_name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	user_name = models.CharField(max_length=50, null=True, blank=True, default="heading text")
	email = models.EmailField(max_length = 150, null=True, blank=True)
	mobile = PhoneNumberField(null=True, blank=True, region="IN")
	city = models.CharField(max_length=50, null=True, blank=True)
	country = models.CharField(max_length=50, null=True, blank=True)
	address = models.TextField(null=True, blank=True)
	about = models.TextField(null=True, blank=True)
	slug = models.CharField(max_length=100, null=True, blank=True)
	primary_image = models.CharField(max_length=150, null=True, blank=True)
	ip_address = models.CharField(max_length=50, null=True, blank=True)
	device = models.CharField(max_length=50, null=True, blank=True)
	os = models.CharField(max_length=50, null=True, blank=True)
	browser = models.CharField(max_length=50, null=True, blank=True)
	sort_id = models.IntegerField(null=True, blank=True)
	status = models.BooleanField(default=False)
	is_deleted = models.BooleanField(default=False)
	created_by = models.IntegerField(null=True, blank=True)
	created_at = models.DateTimeField(default=timezone.now)

	def __str__(self):
		return self.name

