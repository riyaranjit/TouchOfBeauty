from django.contrib import admin
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views



urlpatterns = [
    path("",views.home),
    path("home",views.home, name='home'),
    path("about", views.about, name='about'),
    path("gallery",views.gallery, name='gallery'),
    path("services", views.services, name='services'),
    path("contact", views.contact, name='contact'),
    path('addServiceForm/', views.add_service_MF),
    path('getServiceForm/', views.getServiceForm),
    path('updateServiceMF/<int:service_id>',views.updateServiceMF),
    path('deleteServiceMF/<int:service_id>',views.deleteServiceMF),
    path('addAppointmentForm/', views.addAppointmentForm),
    path('getAppointmentForm/',views.getAppointmentForm),
    path('updateAppointmentForm/<int:appointment_id>',views.updateAppointmentForm),
    path('deleteAppointmentForm/<int:appointment_id>', views.deleteAppointmentForm),
    path('addTeamForm', views.addTeamForm),
    path('getTeamForm', views.getTeamForm),
    path('updateTeamForm/<int:team_id>', views.updateTeamForm),
    path('deleteTeamForm/<int:team_id>', views.deleteTeamForm),
      
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root= settings.STATIC_URL)