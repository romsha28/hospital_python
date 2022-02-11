from django.conf import settings
from django.db import models
from django.forms.models import model_to_dict
from django.utils.timezone import now

class BaseModel(models.Model):
    created_at = models.DateTimeField(default=now)
    
    

    class Meta:
        abstract = True

    def to_dict(self):
        data = model_to_dict(self)
        data["created_at"] = self.created_at
        
        
        return data