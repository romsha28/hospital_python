# Generated by Django 3.2.8 on 2021-11-25 11:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospital', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appointments',
            name='deleted_at',
            field=models.DateTimeField(),
        ),
        migrations.AlterField(
            model_name='appointments',
            name='deleted_by',
            field=models.IntegerField(blank=True),
        ),
        migrations.AlterField(
            model_name='appointments',
            name='updated_at',
            field=models.DateTimeField(),
        ),
    ]