import django_filters
from .models import *
from django_filters import CharFilter

class ServiceFilter(django_filters.FilterSet):
    Name= CharFilter(field_name='name',
                               lookup_expr='icontains')
    class Meta:
        model= Services2
        fields= ''
        
class AppointmentFilter(django_filters.FilterSet):
    Name= CharFilter(field_name='Name',
                               lookup_expr='icontains')
    class Meta:
        model= Appointment2
        fields= ''