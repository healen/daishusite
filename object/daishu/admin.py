#coding:utf-8
from django.contrib import admin

# Register your models here.
from daishu.models import News,Story,BasicInfo

class NewsAdmin(admin.ModelAdmin):
    list_display = ('title','pub_date')
    class Media:
        js=(
            '/media/js/tiny_mce/tiny_mce.js', 
            '/media/js/tiny_mce/langs/zh_CN.js',  
            '/media/js/textareas.js',  
        )
class StoryAdmin(admin.ModelAdmin):
    list_display = ('title','onlinetime')
class BasicInfoAdmin(admin.ModelAdmin):
    class Media:
        js=(
            '/media/js/tiny_mce/tiny_mce.js', 
            '/media/js/tiny_mce/langs/zh_CN.js',  
            '/media/js/textareas.js',
           
        )



admin.site.register(News,NewsAdmin)
admin.site.register(Story,StoryAdmin)
admin.site.register(BasicInfo,BasicInfoAdmin)
