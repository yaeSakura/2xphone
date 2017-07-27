# -*- coding:utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.


#OnePlus5

class OnePlusNav(models.Model):
    name = models.CharField(u'配置介绍',max_length=16)
    index = models.IntegerField(u'排序',default=999)
    class Meta():
        verbose_name = 'oneplus配置'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name.encode('utf-8')


class Oneplus5(models.Model):
    h2 = models.CharField(max_length=30)
    title = models.CharField(max_length=30)
    title_desc = models.CharField(max_length=200)
    img_url = models.ImageField(upload_to='uploads/')


    class Meta():
        verbose_name = 'OnePlus5'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.h2