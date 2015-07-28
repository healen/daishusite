#coding:utf-8
from django.contrib import admin

# Register your models here.
from daishu.models import News,Story,BasicInfo

class NewsAdmin(admin.ModelAdmin):
    list_display = ('title','pub_date')
class StoryAdmin(admin.ModelAdmin):
    list_display = ('title','onlinetime')

admin.site.register(News,NewsAdmin)
admin.site.register(Story,StoryAdmin)
admin.site.register(BasicInfo)
