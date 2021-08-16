from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from accounts.auth import admin_only
from Saloon.models import *
from Saloon.models import Services2
from Saloon.models import Appointment2
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm 
# Create your views here.

@login_required(login_url="/accounts/login/")
@admin_only
def admin_dashboard(request):
    service = Services2.objects.all()
    service_count = service.count()
    appointment=Appointment2.objects.all()
    appoint_count= appointment.count()
    users = User.objects.all()
    user_count = users.filter(is_staff=0).count()
    admin_count = users.filter(is_staff=1).count()
    context = {
        'service': service_count,
        'appointment':appoint_count,
        'user': user_count,
        'admin': admin_count
    }
    return render(request, 'admins/adminDashboard.html', context)


@admin_only
# admin le user kati bhanera herne
def get_user(request):
    users_all= User.objects.all()
    users= users_all.filter(is_staff=0)
    context={
        'users':users,
    }
    return render(request, 'admins/showUser.html',context)

@admin_only
def update_user_to_admin(request, user_id):
    user= User.objects.get(id=user_id)
    user.is_staff=True
    user.save()
    messages.add_message(request, messages.SUCCESS,'User has been updated to Admin')
    return redirect('/admin-dashboard/admin-login/')

@admin_only
def delete_user(request, user_id):
    user= User.objects.get(id=user_id)
    user.delete()
    messages.add_message(request, messages.SUCCESS,'User has been deleted')
    return redirect('/admin-dashboard/admin-login/')



