# Generated by Django 3.2.9 on 2022-02-09 12:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0018_auto_20220209_1157'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointments',
            name='payment_type',
            field=models.CharField(choices=[('On-Clinic', 'On-Clinic'), ('Internet-Banking', 'Internet-Banking'), ('COD', 'COD'), ('other', 'Other')], default='On-Clinic', max_length=20),
        ),
    ]
