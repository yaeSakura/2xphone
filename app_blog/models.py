# # -*- coding:utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from app_main.models import User
# Create your models here.


#博客

# class BlogAd(models.Model):
#     img_url = models.ImageField(upload_to='uploads/')
#
#
#     class Meta():
#         verbose_name = '博客广告'
#         verbose_name_plural = verbose_name


#博客导航条
class navbars_blog(models.Model):
    NavName = models.CharField(max_length=10, null=False)
    NavHref = models.CharField(max_length=20, null=False)

    class Meta:
        verbose_name = '博客导航'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.NavName

# 文章分类
class Category(models.Model):
    name = models.CharField(max_length=30, verbose_name='分类名称')
    index = models.IntegerField(default=999,verbose_name='分类的排序')

    class Meta:
        verbose_name = '分类'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']

    def __unicode__(self):
        return self.name


# 自定义一个文章Model管理器
class ArticleManager(models.Manager):
    def distinct_date(self):
        distinct_date_list = []
        date_list = self.values('date_publish')
        for date in date_list:
            date = date['date_publish'].strftime('%Y/%m') + '文章存档'
            if date not in distinct_date_list:
                distinct_date_list.append(date)
        return distinct_date_list


# 文章模型加新闻
class Article(models.Model):
    author = models.CharField(max_length=20, verbose_name='作者名字', null=False)
    title = models.CharField(max_length=50, verbose_name='文章标题', null=False)
    top_img = models.ImageField(upload_to='blog_img/%Y/%m.%d', blank=True, null=True, verbose_name='博客首图片')
    desc = models.CharField(max_length=150, verbose_name='文章描述', null=False)
    content = models.TextField(verbose_name='文章内容', null=False)
    click_count = models.IntegerField(default=0, verbose_name='点击次数')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间', null=False)
    collect_count = models.IntegerField(default=0, verbose_name=u'收藏次数')
    category = models.ForeignKey(Category, blank=True, null=True, verbose_name='分类')
    # tag = models.ManyToManyField(Tag, verbose_name='标签')

    # 关联管理器
    objects = ArticleManager()

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = verbose_name
        ordering = ['-date_publish']

    def __unicode__(self):
        return self.title


# 评论模型
class Comment(models.Model):
    content = models.TextField(verbose_name='评论内容')
    username = models.CharField(max_length=30, blank=True, null=True, verbose_name='评论用户名')
    user = models.ForeignKey(User, blank=True, null=True, verbose_name='登录用户')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    article = models.ForeignKey(Article, blank=True, null=True, verbose_name='关联文章')
    pid = models.ForeignKey('self', blank=True, null=True, verbose_name='父级评论')

    class Meta:
        verbose_name = '评论'
        verbose_name_plural = verbose_name
        ordering = ['-date_publish']

    def __unicode__(self):
        return str(self.id)

# 产品图片系列
class Series(models.Model):
    title = models.CharField(max_length=50, verbose_name='系列标题')

    class Meta():
        verbose_name = "产品系列"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title

# 产品图片
class Picture(models.Model):
    name = models.CharField(max_length=50, verbose_name='手机名字')
    img_url = models.ImageField(upload_to='uploads/', verbose_name='手机图片')
    category = models.ForeignKey(Category, blank=True, null=True, verbose_name='分类')
    series = models.ForeignKey(Series, verbose_name='系列')

    class Meta():
        verbose_name = "产品图片"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name

class Picture2(models.Model):
    name = models.CharField(max_length=50, verbose_name='手机名字')
    phone = models.CharField(max_length=500, verbose_name='手机描述')
    img2_url = models.ImageField(upload_to='uploads/', verbose_name='手机图片2')
    content = models.TextField(verbose_name='图片下载')
    category = models.ForeignKey(Category, blank=True, null=True, verbose_name='分类')
    series = models.ForeignKey(Series, verbose_name='系列')
    Picture = models.ForeignKey(Picture, verbose_name='产品图片1')

    class Meta():
        verbose_name = "产品图片2"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name

#　视频模型

class Video(models.Model):
    name = models.CharField(max_length=30)
    img_url = models.ImageField(upload_to='blog/video/%Y/%m', blank=True)
    video_url = models.CharField(u'视频资源URL', max_length=200)
    video_length = models.IntegerField(u'视频长度')
    # ass = models.URLField()

    class Meta():
        verbose_name = '视频'
        verbose_name_plural =verbose_name

    def __unicode__(self):
        return self.name


#产品图片

# class ProPic(models.Model):
#     title = models.CharField(max_length=30)
#     name = models.CharField(max_length=30)
#     img_url = models.ImageField(upload_to='uploads/')
#
#     class Meta():
#         verbose_name = "产品图片"
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         return self.title.encode('utf-8')


