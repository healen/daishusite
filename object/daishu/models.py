#coding:utf-8
from django.db import models



class News(models.Model):
	newstype=(
		(0,u'运营知识'),
		(1,u'借贷新闻'),
		(2,u'系统优势'),
		(3,u'公告'),
	)
	title=models.CharField(u'标题',max_length=30)
	author=models.CharField(u'作者',max_length=20)
	types=models.IntegerField(u'类型',max_length=1,choices=newstype,default=3)
	content=models.TextField(u'新闻内容')
	pub_date=models.DateTimeField(u'发表时间',auto_now_add=True,editable = True)
	update_time=models.DateTimeField(u'更新时间',auto_now=True,null=True)

	def __unicode__(self):
		return self.title
	class Meta:
		verbose_name=u'新闻管理'
		verbose_name_plural=u'新闻管理'


class Story(models.Model):
	title=models.CharField(u'网站名称',max_length=30)
	description=models.CharField(u'公司名称',max_length=30)
	onlinetime=models.DateTimeField(u'上线时间')
	url=models.URLField()
	img=models.ImageField(u'上传大图',upload_to='temp')
	logo=models.ImageField(u'上传logo',upload_to='temp')
	content=models.TextField(u'网站简介')
	def __unicode__(self):
		return self.title
	class Meta:
		verbose_name=u'案例管理'
		verbose_name_plural=u'案例管理'


class BasicInfo(models.Model):
	company_name=models.CharField(u'公司名称',max_length=30)
	website_name=models.CharField(u'平台名称',max_length=30)
	logo=models.ImageField(u'网站logo',upload_to='temp')
	tel=models.CharField(u'电话',max_length=13)
	qq=models.CharField(u'qq',max_length=13)
	website_url=models.URLField(u'网址')
	email=models.EmailField(u'邮箱')
	website_name=models.CharField(u'平台名称',max_length=30)
	address=models.CharField(u'公司地址',max_length=50)
	copyright=models.CharField(u'版权信息',max_length=100)
	content=models.TextField(u'公司介绍')
	def __unicode__(self):
		return u'编辑基本信息'
	class Meta:
		verbose_name=u'基本信息'
		verbose_name_plural=u'基本信息'






	



