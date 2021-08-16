from django.shortcuts import render, HttpResponse, redirect
from .models import Services2, Appointment2, Teams
from .forms import ServiceForm, AppointmentForm, TeamForm
from Saloon.filters import ServiceFilter, AppointmentFilter
# Create your views here.

import os
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from accounts.auth import user_only, admin_only


def home(request):
    if request.method == "POST":
        form= AppointmentForm(request.POST, request.FILES)
        if form.is_valid():

            form.save()
            messages.add_message(request, messages.SUCCESS,'Appointment added successfully')
            return redirect('/addAppointmentForm')
        else:
            messages.add_message(request, messages.ERROR,'Unable to add apointment')
            return render(request, '/addAppointmentMF.html',{'form':form})
    context={
        'form':AppointmentForm,
        'activate_appointmentMF': 'active'
    }
    return render(request,'Saloon/home.html',context)

def about(request):
    team= Teams.objects.all()
    context={
        'teams':team,
        'activate_aboutMF':'active'
    }
    return render(request,'Saloon/about.html', context)
    

def gallery(request):
    context={
        'activate_galleryMF':'active'
    }
    return render(request,'Saloon/gallery.html', context)


def services(request):
    service= Services2.objects.all()
    service_filter=ServiceFilter(request.GET, queryset=service)
    service_final= service_filter.qs
    context={
        'services':service_final,
        'activate_serviceMF':'active',
        'service_filter':service_filter
        
    }
    return render(request,'Saloon/service.html',context)

def contact(request):
    context={
        'activate_contactMF':'active'
    }
    return render(request,'Saloon/contact.html', context)

@login_required
@admin_only  
def add_service_MF(request):
    if request.method == "POST":
        form= ServiceForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS,'Service added successfully')
            return redirect('/services')
        else:
            messages.add_message(request, messages.ERROR,'Unable to add service')
            return render(request, 'Saloon/addServiceMF.html',{'form':form})
    context={
        'form':ServiceForm,
        'activate_serviceMF': 'active'
    }
    return render(request,'Saloon/addServiceMF.html',context)

def getServiceForm(request):
    service= Services2.objects.all()
    context={
        'services': service,
        'activate_serviceMF':'active'
    }
    return render(request, 'Saloon/getServiceForm.html',context)

@admin_only
def updateServiceMF(request, service_id):
    service= Services2.objects.get(id=service_id)
    if request.method =="POST":
        form= ServiceForm(request.POST, instance=service)
        if form.is_valid():
            form.save()
            return redirect('/getServiceForm')
    context={
        'form':ServiceForm(instance=service),
        'activate_serviceMF':'active'
    }
    return render(request,'Saloon/updateServiceMF.html',context)

@admin_only
def deleteServiceMF(request, service_id):
    service= Services2.objects.get(id=service_id)
    service.delete()
    return redirect('/getServiceForm')


@login_required
@user_only
def addAppointmentForm(request):
    if request.method == "POST":
        form= AppointmentForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS,'Appointment added successfully')
            return redirect('/addAppointmentForm')
        else:
            messages.add_message(request, messages.ERROR,'Unable to add apointment')
            return render(request, 'Saloon/addAppointmentMF.html',{'form':form})
    context={
        'form':AppointmentForm,
        'activate_AppointmentMF': 'active'
    }
    return render(request,'Saloon/addAppointmentMF.html',context)


def getAppointmentForm(request):
    appointment=Appointment2.objects.all()
    appointment_filter=AppointmentFilter(request.GET, queryset=appointment)
    appointment_final= appointment_filter.qs
    context={
        'appointments': appointment_final,
        'activate_AppointmentMF':'active',
        'appointment_filter':appointment_filter
    }
    return render(request, 'Saloon/getAppointmentForm.html',context)

@admin_only
def updateAppointmentForm(request, appointment_id):
    appointment= Appointment2.objects.get(id=appointment_id)
    if request.method =="POST":
        form= AppointmentForm(request.POST, instance=appointment)
        if form.is_valid():
            form.save()
            return redirect('/getAppointmentForm')
    context={
        'form':AppointmentForm(instance=appointment),
        'activate_AppointmentMF':'active'
    }
    return render(request,'Saloon/updateAppointmentForm.html',context)

@admin_only
def deleteAppointmentForm(request, appointment_id):
    appointment= Appointment2.objects.get(id=appointment_id)
    appointment.delete()
    return redirect('/getAppointmentForm')

@admin_only
def addTeamForm(request):
    if request.method == "POST":
        form= TeamForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS,'Team added successfully')
            return redirect('/getTeamForm')
        else:
            messages.add_message(request, messages.ERROR,'Unable to add service')
            return render(request, 'Saloon/addTeamMF.html',{'form':form})
    context={
        'form':TeamForm,
        'activate_teamMF': 'active'
    }
    return render(request,'Saloon/addTeamMF.html',context)

def getTeamForm(request):
    team= Teams.objects.all()
    context={
        'teams': team,
        'activate_teamMF':'active'
    }
    return render(request, 'Saloon/getTeamForm.html',context)

@admin_only
def updateTeamForm(request, team_id):
    team= Teams.objects.get(id=team_id)
    if request.method =="POST":
        form= TeamForm(request.POST, instance=team)
        if form.is_valid():
            form.save()
            return redirect('/getTeamForm')
    context={
        'form':TeamForm(instance=team),
        'activate_TeamMF':'active'
    }
    return render(request,'Saloon/updateTeamForm.html',context)

@admin_only
def deleteTeamForm(request, team_id):
    team= Teams.objects.get(id=team_id)
    team.delete()
    return redirect('/getTeamForm')