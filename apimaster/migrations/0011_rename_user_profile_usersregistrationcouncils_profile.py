# Generated by Django 3.2.9 on 2021-12-07 07:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0010_usersregistrationcouncils_user_profile'),
    ]

    operations = [
        migrations.RenameField(
            model_name='usersregistrationcouncils',
            old_name='user_profile',
            new_name='profile',
        ),
    ]