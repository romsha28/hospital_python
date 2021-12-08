from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index),
    # path('dashborad/', views.dashboard),
    # path('send-mail', views.sendMail),
    # path('list', views.getList),
    # path('view/<int:id>', views.getView),
    # path('save', views.postStore),
    # path('deiele/<int:id>', views.getDeiele),
]




