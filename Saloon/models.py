from django.db import models
from django.contrib import messages
from django.core import validators
from accounts.models import Profile
from django.contrib.auth.models import User



# Create your models here.

class Services2(models.Model):
    name=models.CharField(max_length=100, null=True)
    price= models.CharField(max_length=50, null=True)
    image=models.ImageField(upload_to='static/uploads', blank=False , null=True)
    def __str__(self):
        return self.name
        
class Appointment2(models.Model):
    Name = models.CharField(max_length = 50, validators=[validators.MinLengthValidator(2)])
    Email= models.EmailField(blank = False, null = True, unique=True)
    choices = [
    ('Threading', 'Threading'),
    ("Facial","Facial"),
    ("Manicure Pedicure","Manicure Pedicure"),
    ("Hair Cut","Hair Cut"),
    ("Hair Colour","Hair Colour"),
    ('Makeup','Makeup')
]
    Service= models.CharField(max_length=30, blank=False, null=True , choices= choices)
    AppointDate= models.DateField(null=True, blank=True)
    Phone= models.CharField(max_length = 15, blank = False, null = True)
    Desc= models.TextField(max_length=200, blank=True)
    user=models.ForeignKey(User,on_delete=models.CASCADE, null=True)

    def __str__(self):
        return self.Name

class Teams(models.Model):
    image=models.ImageField(upload_to="static/uploads", blank=False, null=True)
    name= models.CharField(max_length = 50, validators=[validators.MinLengthValidator(2)])
    expert=models.CharField(max_length=100, null=True)
    experience= models.CharField(max_length=20, null=True)
    
