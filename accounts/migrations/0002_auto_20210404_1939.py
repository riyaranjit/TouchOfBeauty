# Generated by Django 3.1.6 on 2021-04-04 13:54

import django.contrib.auth.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='user',
            field=models.CharField(max_length=30, null=True, verbose_name=django.contrib.auth.models.User),
        ),
    ]
