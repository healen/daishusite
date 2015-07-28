from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'object.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^temp/(?P<path>.*)$','django.views.static.serve',{'document_root':settings.MEDIA_ROOT},name='temp'),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$','daishu.views.index',name='index'),
    url(r'^product/$','daishu.views.product',name='product'),
    url(r'^story/$','daishu.views.story',name='story'),
    url(r'^story/(\d*)/$','daishu.views.storyDetail',name='storyDetail'),
    url(r'^service/$','daishu.views.service',name='service'),
    url(r'^program/$','daishu.views.program',name='program'),
    url(r'^news/$','daishu.views.news',name='news'),
    url(r'^news/(\d*)/$','daishu.views.newsDetail',name='newsDetail'),
    url(r'^aboutus/$','daishu.views.aboutus',name='aboutus'),
)
