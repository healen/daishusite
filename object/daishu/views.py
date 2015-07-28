#coding:utf-8
from django.shortcuts import render
from daishu.models import News,Story,BasicInfo


topicLenth=5

# 基本信息字段
basic_info=BasicInfo.objects.all()[0]


# 首页
def index(req):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	story_list=Story.objects.order_by('-id').all()[0:12]
	system_advantage=News.objects.filter(types=2).order_by('-id')[0:10]
	return render(req,'index.html',{
		"story_list":story_list,
		"new_topic":new_topic,
		"system_advantage":system_advantage,
		'page_init':{
			"title":u"首页",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 产品介绍
def product(req):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	return render(req,'product.html',{
		'page_init':{
			"title":u"产品介绍",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 成功案例列表
def story(req):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	story_list=Story.objects.order_by('-id').all()
	return render(req,'story.html',{
		"new_topic":new_topic,
		"story_list":story_list,
		'page_init':{
			"title":u"成功案例",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 成功案例详情
def storyDetail(req,parm):
	
	story_detail=Story.objects.get(id=parm)
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	return render(req,'story-detail.html',{
		"story_detail":story_detail,
		"new_topic":new_topic,
		'page_init':{
			"title":u"%s" % story_detail.title,
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 服务项目
def service(req):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	return render(req,'service.html',{
		"new_topic":new_topic,
		'page_init':{
			"title":u"服务项目",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 方案流程
def program(req):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	return render(req,'program.html',{
		"new_topic":new_topic,
		'page_init':{
			"title":u"方案流程",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 新闻列表
def news(req):
	new_list=News.objects.order_by('-id').all()
	new_topic=new_list[0:topicLenth]
	return render(req,'news.html',{
		"new_topic":new_topic,
		"new_list":new_list,
		'page_init':{
			"title":u"新闻列表",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 新闻详情
def newsDetail(req,parm):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	new_detail=News.objects.get(id=parm)
	return render(req,'news-detail.html',{
		"parm":parm,
		"new_topic":new_topic,
		"new_detail":new_detail,
		'page_init':{
			"title":"%s" % new_detail.title,
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"basic_info":basic_info
	})

# 关于我们
def aboutus(req):
	new_topic=News.objects.order_by('-id').all()[0:topicLenth]
	return render(req,'aboutus.html',{
		'page_init':{
			"title":u"关于我们",
			"keywords":u"关键词1、关键词2",
			"description":u"添加页面描述"
		},
		"new_topic":new_topic,
		"basic_info":basic_info
	})
