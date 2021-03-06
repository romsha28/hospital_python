# Generated by Django 3.2.9 on 2021-11-30 13:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0006_auto_20211129_1757'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subscriptionhistory',
            name='plan_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='subscriptionplans', to='hospital.subscriptionplans'),
        ),
        migrations.AlterField(
            model_name='subscriptionplans',
            name='primary_image',
            field=models.FileField(blank=True, null=True, upload_to='treatments/', verbose_name='primary_image'),
        ),
    ]
