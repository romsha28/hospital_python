# Generated by Django 3.2.9 on 2021-12-06 09:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0006_consultationfees_establishmentproofs_establishmenttimings_maplocations_medicalregistrationproofs_use'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofiles',
            name='work_experience',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
