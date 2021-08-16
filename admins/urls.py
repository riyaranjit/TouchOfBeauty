from django.urls import path
from .import views

urlpatterns=[
    path('admin-login/',views.admin_dashboard),
    path('show-user/',views.get_user),
    path('update-user-to-admin/<int:user_id>/', views.update_user_to_admin),
    path('delete-user/<int:user_id>', views.delete_user),
 
]