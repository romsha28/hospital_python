# Generated by Django 3.2.9 on 2021-12-07 07:15

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0009_rename_user_usersregistrationcouncils_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='usersregistrationcouncils',
            name='user_profile',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='apimaster.userprofiles'),
        ),
    ]
