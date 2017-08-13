# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-08-01 07:30
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Ad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50, verbose_name='\u5e7f\u544a\u63cf\u8ff0')),
                ('img_url', models.ImageField(upload_to=b'shop/ad/%Y/%m')),
                ('AdName', models.CharField(max_length=20)),
                ('index', models.IntegerField(default=999)),
            ],
            options={
                'verbose_name': '\u5546\u57ce\u5e7f\u544a',
                'verbose_name_plural': '\u5546\u57ce\u5e7f\u544a',
            },
        ),
        migrations.CreateModel(
            name='Arg',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=10)),
                ('desc', models.CharField(max_length=100)),
                ('index', models.IntegerField(default=999, verbose_name=b'\xe6\x8e\x92\xe5\xba\x8f')),
            ],
            options={
                'verbose_name': '\u89c4\u683c\u53c2\u6570',
                'verbose_name_plural': '\u89c4\u683c\u53c2\u6570',
            },
        ),
        migrations.CreateModel(
            name='Navtags',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('TagName', models.CharField(max_length=20)),
                ('TagImg', models.ImageField(upload_to=b'shop/navtags/%Y/%m')),
            ],
            options={
                'verbose_name': '\u5bfc\u822a\u6807\u7b7e',
                'verbose_name_plural': '\u5bfc\u822a\u6807\u7b7e',
            },
        ),
        migrations.CreateModel(
            name='PhoneArg',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=20)),
                ('arg_desc', models.CharField(max_length=200)),
                ('img_url', models.ImageField(upload_to=b'shop/phone/%Y/%m')),
            ],
            options={
                'verbose_name': '\u624b\u673a\u53c2\u6570',
                'verbose_name_plural': '\u624b\u673a\u53c2\u6570',
            },
        ),
        migrations.CreateModel(
            name='Prob',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30)),
                ('desc', models.CharField(max_length=2000)),
                ('index', models.IntegerField(default=999, verbose_name=b'\xe6\x8e\x92\xe5\xba\x8f')),
            ],
            options={
                'verbose_name': '\u5e38\u89c1\u95ee\u9898',
                'verbose_name_plural': '\u5e38\u89c1\u95ee\u9898',
            },
        ),
        migrations.CreateModel(
            name='Product_desc',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img_url', models.ImageField(upload_to=b'shop/product_desc/%Y/%m')),
                ('title', models.CharField(blank=True, max_length=30)),
                ('desc', models.CharField(blank=True, max_length=100)),
                ('index', models.IntegerField(default=999, verbose_name=b'\xe6\x8e\x92\xe5\xba\x8f')),
            ],
            options={
                'verbose_name': '\u5546\u54c1\u8be6\u60c5',
                'verbose_name_plural': '\u5546\u54c1\u8be6\u60c5',
            },
        ),
        migrations.CreateModel(
            name='Product_details',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('color', models.CharField(blank=True, max_length=16)),
                ('title', models.CharField(max_length=30, verbose_name=b'\xe6\xa0\x87\xe9\xa2\x98')),
                ('desc', models.CharField(blank=True, max_length=200, verbose_name=b'\xe6\x8f\x8f\xe8\xbf\xb0')),
                ('price', models.DecimalField(decimal_places=2, max_digits=5, verbose_name=b'\xe5\x95\x86\xe5\x93\x81\xe4\xbb\xb7\xe6\xa0\xbc')),
                ('img_url', models.ImageField(upload_to=b'shop/product/%Y/%m')),
                ('small_img', models.ImageField(blank=True, null=True, upload_to=b'shop/product/%Y/%m')),
                ('color_img', models.ImageField(blank=True, null=True, upload_to=b'shop/product/%Y/%m')),
            ],
            options={
                'verbose_name': '\u5546\u54c1\u5c55\u793a',
                'verbose_name_plural': '\u5546\u54c1\u5c55\u793a',
            },
        ),
        migrations.CreateModel(
            name='Search',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name': '\u641c\u7d22\u5185\u5bb9',
                'verbose_name_plural': '\u641c\u7d22\u5185\u5bb9',
            },
        ),
        migrations.CreateModel(
            name='ServerContent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img_url', models.ImageField(upload_to=b'shop/server/%Y/%m', verbose_name='\u56fe\u7247')),
                ('title', models.CharField(max_length=20)),
            ],
            options={
                'verbose_name': '\u670d\u52a1\u9009\u9879',
                'verbose_name_plural': '\u670d\u52a1\u9009\u9879',
            },
        ),
        migrations.CreateModel(
            name='ShopSales',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('saleName', models.CharField(max_length=30)),
                ('saleDese', models.CharField(max_length=30)),
                ('salePrice', models.DecimalField(decimal_places=2, max_digits=5)),
                ('saleImg', models.ImageField(upload_to=b'shop/sales/%Y/%m')),
                ('index', models.IntegerField(default=999, verbose_name='\u663e\u793a\u987a\u5e8f')),
            ],
            options={
                'verbose_name': '\u5546\u57ce\u9996\u9875\u5546\u54c1',
                'verbose_name_plural': '\u5546\u57ce\u9996\u9875\u5546\u54c1',
            },
        ),
        migrations.CreateModel(
            name='TagGoods',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('goodImg', models.ImageField(upload_to=b'shop/%Y/%m')),
                ('goodName', models.CharField(max_length=20)),
                ('goodPrice', models.DecimalField(decimal_places=2, max_digits=7)),
                ('discount', models.DecimalField(decimal_places=2, max_digits=3, max_length=1, verbose_name='\u6298\u6263')),
                ('Navtags', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app_store.Navtags', verbose_name=b'\xe5\xaf\xbc\xe8\x88\xaa\xe6\xa0\x87\xe7\xad\xbe')),
            ],
            options={
                'verbose_name': '\u6807\u7b7e\u8be6\u60c5',
                'verbose_name_plural': '\u6807\u7b7e\u8be6\u60c5',
            },
        ),
        migrations.AddField(
            model_name='product_details',
            name='sale',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='app_store.ShopSales'),
        ),
        migrations.AddField(
            model_name='product_desc',
            name='sale',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='app_store.ShopSales'),
        ),
        migrations.AddField(
            model_name='arg',
            name='sale',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='app_store.ShopSales'),
        ),
        migrations.AddField(
            model_name='ad',
            name='Navtags_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app_store.Navtags'),
        ),
    ]
