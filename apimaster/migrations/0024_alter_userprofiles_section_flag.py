# Generated by Django 3.2.9 on 2022-01-05 11:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0023_rename_section_flag_userprofiles_section_flag'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofiles',
            name='section_flag',
            field=models.TextField(blank=True, default='[0,0,0]', null=True),
        ),
    ]
