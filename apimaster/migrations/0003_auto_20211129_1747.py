# Generated by Django 3.2.8 on 2021-11-29 12:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0002_auto_20211129_1729'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofiles',
            name='dob',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='userprofiles',
            name='pincode',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
