# # -*- coding:utf-8 -*-
# from __future__ import unicode_literals
#
# from django.db import models
#
# # Create your models here.
#
#
# # 导航标签
#
# class Navtags(models.Model):
#     TagName = models.CharField(max_length=20)
#     TagImg = models.ImageField(upload_to='uploads/')
#
#     class Meta():
#         verbose_name = '导航标签'
#         verbose_name_plural = verbose_name
#
#
#     def __str__(self):
#         return self.TagName.encode('utf-8')
#
# #标签详情
#
# class TagGoods(models.Model):
#     goodImg = models.ImageField(upload_to='uploads/')
#     goodName = models.CharField(max_length=20)
#     goodPrice = models.DecimalField(max_digits=7,decimal_places=2)
#     discount = models.DecimalField(u'折扣',max_length=1,max_digits=3,decimal_places=2)
#     Navtags = models.ForeignKey(Navtags,verbose_name='导航标签')
#
#     class Meta():
#         verbose_name = '标签详情'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         return self.goodName.encode('utf-8')
#
# #商城广告
#
# class Ad(models.Model):
#     title = models.CharField(u'广告描述',max_length=50)
#     img_url = models.ImageField(upload_to='uploads/')
#     AdName = models.CharField(max_length=20)
#     index = models.IntegerField(default=999)
#     Navtags_id = models.ForeignKey('Navtags')
#     class Meta():
#         verbose_name = '商城广告'
#         verbose_name_plural = verbose_name
#
#
#     def __str__(self):
#         return self.AdName.encode('utf-8')
#
#
# #商城页商品
#
#
# class ShopSales(models.Model):
#     saleName = models.CharField(max_length=30)
#     saleDese = models.CharField(max_length=30)
#     salePrice = models.DecimalField(max_digits=5,decimal_places=2)
#     saleImg = models.ImageField(upload_to='uploads/')
#
#     class Meta():
#         verbose_name = '商城首页商品'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         return self.saleName.encode('utf-8')
#
#
#
#
#
# #手机参数
#
# class PhoneArg(models.Model):
#     title = models.CharField(max_length=20)
#     arg_desc = models.CharField(max_length=200)
#     img_url = models.ImageField(upload_to='uploads/')
#
#     class Meta():
#         verbose_name = '手机参数'
#         verbose_name_plural = verbose_name
#
#     def __unicode__(self):
#         return self.title
#
#
# #服务内容
#
# class ServerContent(models.Model):
#     img_url = models.ImageField(u'图片',upload_to='uploads/')
#     title = models.CharField(max_length=20)
#
#     class Meta():
#         verbose_name = '服务选项'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         return self.title.encode('utf-8')
