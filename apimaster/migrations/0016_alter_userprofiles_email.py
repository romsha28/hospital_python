# Generated by Django 3.2.9 on 2021-12-29 07:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0015_auto_20211229_1321'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofiles',
            name='email',
            field=models.EmailField(blank=True, max_length=150, null=True),
        ),
    ]
