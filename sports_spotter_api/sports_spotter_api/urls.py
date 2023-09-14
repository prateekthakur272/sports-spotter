"""
URL configuration for sports_spotter_api project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from rest_framework import routers
from feedback import views as feedback_views
from events import views as events_views
from rest_framework.authtoken.views import obtain_auth_token
from core import views as core_views

router = routers.DefaultRouter()
router.register(r'posts', events_views.PostViewSet, basename='posts')
router.register(r'alerts', events_views.AlertViewSet, basename='alerts')
urlpatterns = router.urls

urlpatterns += [
    path('admin/', admin.site.urls),
    path('api-auth-token/', obtain_auth_token),
    path('feedback/', feedback_views.FeedbackApiView.as_view()),
    path('register/', core_views.register),
    path('login/', core_views.login),
    path('get_user/', core_views.get_user),
]