"""phone_2x URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from app_main.views import *

urlpatterns = [
    url(r'^login$', do_login, name='login'),
    url(r'^reg$', do_reg, name='reg'),
    url(r'^logout$', do_logout, name='logout'),
    url(r'^account/activate/(?P<token>\w+.[-_\w]*\w+.[-_\w]*\w+)$', active_user, name='active_user'),
    url(r'^', index, name='index'),
]
