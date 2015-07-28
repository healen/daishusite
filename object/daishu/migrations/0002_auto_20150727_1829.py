# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('daishu', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Story',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=30, verbose_name='\u6848\u4f8b\u6807\u9898')),
                ('description', models.CharField(max_length=30, verbose_name='\u6848\u4f8b\u63cf\u8ff0')),
                ('content', models.TextField(verbose_name='\u6848\u4f8b\u5185\u5bb9')),
                ('onlinetime', models.DateTimeField(verbose_name='\u4e0a\u7ebf\u65f6\u95f4')),
                ('url', models.URLField()),
                ('img', models.ImageField(upload_to=b'temp')),
                ('logo', models.ImageField(upload_to=b'temp')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AlterField(
            model_name='news',
            name='types',
            field=models.IntegerField(default=3, max_length=1, verbose_name='\u7c7b\u578b', choices=[(0, '\u8fd0\u8425\u77e5\u8bc6'), (1, '\u501f\u8d37\u65b0\u95fb'), (2, '\u7cfb\u7edf\u4f18\u52bf'), (3, '\u516c\u544a')]),
            preserve_default=True,
        ),
    ]
