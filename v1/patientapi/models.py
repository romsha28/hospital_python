from tkinter import CASCADE
from django.db import models
from django.contrib.auth.models import User
from v1.base.models import BaseModel
from django.utils.timezone import now
# Create your models here.
import random

class V1_UserOtp(BaseModel):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    otp = models.CharField(max_length=20, default='process')
    is_expire = models.BooleanField(default=False)
    updated_at = models.DateTimeField(default=now)
    pass

    def save(self, *args, **kwargs):
        if self.otp == 'process':
            self.otp = str(random.randint(100001,999999))
            self.is_expire = False
            print(self.otp)    



        super(V1_UserOtp, self).save(*args, **kwargs)
    
    def delete(self, *args, **kwargs):
        super(V1_UserOtp, self).delete(*args, **kwargs)
        




