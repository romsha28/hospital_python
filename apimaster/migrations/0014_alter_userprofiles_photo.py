# Generated by Django 3.2.9 on 2021-12-13 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0013_auto_20211212_1404'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofiles',
            name='photo',
            field=models.FileField(blank=True, null=True, upload_to='profile_photo/', verbose_name='photo'),
        ),
    ]