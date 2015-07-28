# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('daishu', '0002_auto_20150727_1829'),
    ]

    operations = [
        migrations.CreateModel(
            name='BasicInfo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('company_name', models.CharField(max_length=30, verbose_name='\u516c\u53f8\u540d\u79f0')),
                ('logo', models.ImageField(upload_to=b'temp', verbose_name='\u7f51\u7ad9logo')),
                ('tel', models.CharField(max_length=13, verbose_name='\u7535\u8bdd')),
                ('qq', models.CharField(max_length=13, verbose_name='qq')),
                ('website_url', models.URLField(verbose_name='\u7f51\u5740')),
                ('email', models.EmailField(max_length=75, verbose_name='\u90ae\u7bb1')),
                ('website_name', models.CharField(max_length=30, verbose_name='\u5e73\u53f0\u540d\u79f0')),
                ('address', models.TextField(verbose_name='\u516c\u53f8\u5730\u5740')),
                ('copyright', models.TextField(verbose_name='\u7248\u6743\u4fe1\u606f')),
                ('content', models.TextField(verbose_name='\u516c\u53f8\u4ecb\u7ecd')),
            ],
            options={
                'verbose_name': '\u57fa\u672c\u4fe1\u606f',
                'verbose_name_plural': '\u57fa\u672c\u4fe1\u606f',
            },
            bases=(models.Model,),
        ),
        migrations.AlterModelOptions(
            name='news',
            options={'verbose_name': '\u65b0\u95fb\u7ba1\u7406', 'verbose_name_plural': '\u65b0\u95fb\u7ba1\u7406'},
        ),
        migrations.AlterModelOptions(
            name='story',
            options={'verbose_name': '\u6848\u4f8b\u7ba1\u7406', 'verbose_name_plural': '\u6848\u4f8b\u7ba1\u7406'},
        ),
        migrations.AlterField(
            model_name='story',
            name='content',
            field=models.TextField(verbose_name='\u7f51\u7ad9\u7b80\u4ecb'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='story',
            name='description',
            field=models.CharField(max_length=30, verbose_name='\u516c\u53f8\u540d\u79f0'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='story',
            name='img',
            field=models.ImageField(upload_to=b'temp', verbose_name='\u4e0a\u4f20\u5927\u56fe'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='story',
            name='logo',
            field=models.ImageField(upload_to=b'temp', verbose_name='\u4e0a\u4f20logo'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='story',
            name='title',
            field=models.CharField(max_length=30, verbose_name='\u7f51\u7ad9\u540d\u79f0'),
            preserve_default=True,
        ),
    ]
