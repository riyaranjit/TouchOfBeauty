from django.urls import path
from . import views
from django.http import request
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views


urlpatterns=[
    path('login/', views.login_user),
    path('register/', views.register_user),
    path('logout', views.logout_user),
    path('profile/',views.user_account)
]