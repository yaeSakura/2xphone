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
from app_blog.views import *

urlpatterns = [
    url(r'^video$', video, name='video'),
    url(r'^picture$', picture, name='picture'),
    url(r'^picture_details/(?P<id>[\d]+)$', picture_details, name='picture_details'),
    url(r'^news$', news, name='news'),
    # url(r'^collection/(?P<id>[\w]+)$', collection_time, name='collection'),
    url(r'^collection$', collection_time, name='collection'),
    url(r'^search$', blog_search, name='search'),
    url(r'^article/(?P<id>[\d]+)$', blog_detail, name='article'),
    url(r'^comment/(?P<id>[\d]+)$', comment_post, name='comment_post'),
    url(r'^child_comment/(?P<userid>[\d]+)/(?P<artid>[\d]+)$', child_comment_post, name='child_comment_post'),
    url(r'^movie/(?P<id>\d+)/$', movie, name='movie'),
    url(r'^', blog, name='blog'),
]
