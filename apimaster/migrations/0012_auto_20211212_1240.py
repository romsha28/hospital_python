# Generated by Django 3.2.9 on 2021-12-12 07:10

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('apimaster', '0011_rename_user_profile_usersregistrationcouncils_profile'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='establishmentproofs',
            name='user_id',
        ),
        migrations.RemoveField(
            model_name='medicalregistrationproofs',
            name='user_id',
        ),
        migrations.RemoveField(
            model_name='usersclinics',
            name='user_id',
        ),
        migrations.RemoveField(
            model_name='userseducations',
            name='user_id',
        ),
        migrations.RemoveField(
            model_name='usersidentityproofs',
            name='user_id',
        ),
        migrations.AddField(
            model_name='establishmentproofs',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='medicalregistrationproofs',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='usersclinics',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='userseducations',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='usersidentityproofs',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]