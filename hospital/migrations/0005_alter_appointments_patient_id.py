# Generated by Django 3.2.8 on 2021-11-29 12:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0004_alter_treatments_primary_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointments',
            name='patient_id',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
