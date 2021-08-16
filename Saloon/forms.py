from django import forms
from .models import Services2,Appointment2, Teams
from django.forms import ModelForm

class ServiceForm(ModelForm):
    class Meta:
        model=Services2
        fields="__all__"

class AppointmentForm(ModelForm):
    class Meta:
        model=Appointment2
        fields="__all__"

        widgets={
            'Name':forms.TextInput(attrs={'placeholder':'Enter your name'}),
            'Email':forms.TextInput(attrs={'placeholder': 'something@gmail.com'}),
            'Phone':forms.TextInput(attrs={'placeholder':'Enter your number'}),
            'AppointDate':forms.TextInput(attrs={'placeholder':'Selected your preferred date'}),
            'Desc':forms.TextInput(attrs={'placeholder':'Anything you would like specify'}),

        }
    
class TeamForm(ModelForm):
    class Meta:
        model=Teams
        fields="__all__"
