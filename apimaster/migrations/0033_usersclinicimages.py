# Generated by Django 3.2.9 on 2022-02-04 06:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0032_userprofiles_phone_code'),
    ]

    operations = [
        migrations.CreateModel(
            name='UsersClinicImages',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('subject', models.CharField(blank=True, default='Home Address', max_length=150, null=True)),
                ('image', models.FileField(blank=True, null=True, upload_to='clinic_image/', verbose_name='image')),
                ('status', models.BooleanField(default=False)),
                ('is_deleted', models.BooleanField(default=False)),
                ('created_by', models.IntegerField(blank=True, null=True)),
                ('updated_by', models.IntegerField(blank=True, null=True)),
                ('deleted_by', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('deleted_at', models.DateTimeField(blank=True, null=True)),
                ('clinic', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='clinic', to='apimaster.usersclinics')),
            ],
            options={
                'verbose_name': 'UsersClinicImages',
            },
        ),
    ]