# Generated by Django 3.2.9 on 2022-02-04 07:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('apimaster', '0034_auto_20220204_1300'),
    ]

    operations = [
        migrations.AddField(
            model_name='establishmenttimings',
            name='clinic',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='est_clinic', to='apimaster.usersclinics'),
        ),
    ]