# Generated by Django 3.2.9 on 2021-12-06 11:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0008_auto_20211206_1621'),
    ]

    operations = [
        migrations.RenameField(
            model_name='usersregistrationcouncils',
            old_name='User',
            new_name='user',
        ),
    ]