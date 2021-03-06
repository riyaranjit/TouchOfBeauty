# Generated by Django 3.1.6 on 2021-04-04 13:15

from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Saloon', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Teams',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(null=True, upload_to='static/uploads')),
                ('name', models.CharField(max_length=50, validators=[django.core.validators.MinLengthValidator(2)])),
                ('expert', models.CharField(max_length=100, null=True)),
                ('experience', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.AlterField(
            model_name='appointment2',
            name='user',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
