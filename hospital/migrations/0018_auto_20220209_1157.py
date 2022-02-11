# Generated by Django 3.2.9 on 2022-02-09 06:27

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('hospital', '0017_auto_20220208_1722'),
    ]

    operations = [
        migrations.RenameField(
            model_name='translations',
            old_name='recever_name',
            new_name='name',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='amount',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='error_code',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='model_name',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='payment_getway',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='payment_method',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='payment_mode',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='payment_note',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='payment_status',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='payment_type',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='recever_email',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='recever_user_id',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='reference_code',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='sender_email',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='sender_name',
        ),
        migrations.RemoveField(
            model_name='translations',
            name='sender_user_id',
        ),
        migrations.AddField(
            model_name='translations',
            name='translation_status',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='translations',
            name='translation_type',
            field=models.CharField(blank=True, default='google', max_length=20, null=True),
        ),
        migrations.CreateModel(
            name='PaymentTransactions',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('transaction_id', models.CharField(max_length=200)),
                ('amount', models.DecimalField(decimal_places=2, default=0, max_digits=8)),
                ('transaction_type', models.CharField(max_length=50)),
                ('model_name', models.CharField(max_length=100)),
                ('payment_status', models.CharField(blank=True, max_length=50, null=True)),
                ('payment_type', models.CharField(choices=[('Deposit', 'Deposit'), ('Withdraw', 'Withdraw'), ('None', 'None')], default='None', max_length=20)),
                ('payment_mode', models.CharField(blank=True, max_length=50, null=True)),
                ('payment_method', models.CharField(blank=True, max_length=50, null=True)),
                ('payment_getway', models.CharField(blank=True, max_length=50, null=True)),
                ('payment_note', models.CharField(blank=True, max_length=200, null=True)),
                ('sender_name', models.CharField(blank=True, max_length=100, null=True)),
                ('sender_email', models.EmailField(blank=True, max_length=100, null=True)),
                ('recever_name', models.CharField(blank=True, max_length=100, null=True)),
                ('recever_email', models.EmailField(blank=True, max_length=100, null=True)),
                ('reference_code', models.CharField(blank=True, max_length=100, null=True)),
                ('error_code', models.CharField(blank=True, max_length=50, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('status', models.BooleanField(default=False)),
                ('is_deleted', models.BooleanField(default=False)),
                ('created_by', models.IntegerField(blank=True, null=True)),
                ('updated_by', models.IntegerField(blank=True, null=True)),
                ('deleted_by', models.IntegerField(blank=True, null=True)),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now)),
                ('updated_at', models.DateTimeField(blank=True, null=True)),
                ('deleted_at', models.DateTimeField(blank=True, null=True)),
                ('recever_user_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='recever_user', to=settings.AUTH_USER_MODEL)),
                ('sender_user_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='sender_user', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
