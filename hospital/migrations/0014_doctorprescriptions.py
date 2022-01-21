# Generated by Django 3.2.9 on 2022-01-17 09:31

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0013_appointments_meeting_time_period'),
    ]

    operations = [
        migrations.CreateModel(
            name='DoctorPrescriptions',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, default='Doctor Prescription', max_length=150, null=True)),
                ('message', models.TextField(blank=True, null=True)),
                ('prescription_file', models.FileField(blank=True, null=True, upload_to='prescriptions/', verbose_name='prescription_file')),
                ('status', models.BooleanField(default=False)),
                ('is_deleted', models.BooleanField(default=False)),
                ('created_by', models.IntegerField(blank=True, null=True)),
                ('updated_by', models.IntegerField(blank=True, null=True)),
                ('deleted_by', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('deleted_at', models.DateTimeField(blank=True, null=True)),
                ('appointment', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='hospital.appointments')),
            ],
            options={
                'verbose_name': 'DoctorPrescriptions',
            },
        ),
    ]