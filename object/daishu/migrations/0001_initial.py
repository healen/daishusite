# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=30, verbose_name='\u6807\u9898')),
                ('author', models.CharField(max_length=20, verbose_name='\u4f5c\u8005')),
                ('types', models.CharField(default=3, max_length=1, verbose_name='\u7c7b\u578b', choices=[(0, '\u8fd0\u8425\u77e5\u8bc6'), (1, '\u501f\u8d37\u65b0\u95fb'), (2, '\u7cfb\u7edf\u4f18\u52bf'), (3, '\u516c\u544a')])),
                ('content', models.TextField(verbose_name='\u65b0\u95fb\u5185\u5bb9')),
                ('pub_date', models.DateTimeField(auto_now_add=True, verbose_name='\u53d1\u8868\u65f6\u95f4')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='\u66f4\u65b0\u65f6\u95f4', null=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
