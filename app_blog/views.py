# -*- coding:utf-8 -*-
from django.shortcuts import render
from app_blog.models import *
from django.core.paginator import Paginator, InvalidPage, EmptyPage, PageNotAnInteger

import logging
# Create your views here.

logger = logging.getLogger('blog.views')

# 分页代码
def getPage(request, article_list):
    paginator = Paginator(article_list, 5)
    try:
        page = int(request.GET.get('page', 1))
        article_list = paginator.page(page)
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        article_list = paginator.page(1)
    return article_list

# 博客
def blog(request):
    try:
        navbars = navbars_blog.objects.all()
        article_list = getPage(request, Article.objects.all())
    except Exception as e:
        logger.error(e)
    return render(request, 'blog.html', locals())

# 博客视频
def video(request):
    return render(request, 'blog-video.html', locals())


# 博客产品
def product(request):
    return render(request, 'blog-picture.html', locals())

# 博客新闻
def news(request):
    return render(request, 'blog-news.html', locals())
