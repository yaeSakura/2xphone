# -*- coding:utf-8 -*-
from django.shortcuts import render, HttpResponseRedirect, HttpResponse
from app_blog.models import *
from django.core.paginator import Paginator, InvalidPage, EmptyPage, PageNotAnInteger

import logging
from django.core.urlresolvers import reverse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import login, logout, authenticate
# Create your views here.

logger = logging.getLogger('blog.views')

# 分页代码
def getPage(request, article_list):
    paginator = Paginator(article_list, 5)
    try:
        page = int(request.GET.get('page', 1))
        article_list = paginator.page(page)
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        article_list = paginator.page(1)
    return article_list

# 博客
def blog(request):
    try:
        navbars = navbars_blog.objects.all()
        article_list = getPage(request, Article.objects.all())
        hot_articles = Article.objects.order_by("-click_count").all()[:4]
        total_pag_list = range(1, (article_list.paginator.num_pages + 1))
    except Exception as e:
        logger.error(e)
    return render(request, 'blog.html', locals())

# 收藏次数
# def collection_time(request, id):
#     print id
#     # print type(int(id))
#     try:
#         collect = Article.objects.filter(id=int(id))[0].collect_count + 1
#         print collect
#         # print collect[0].collect_count
#         Article.objects.filter(id=id).update(collect_count=collect)
#     except Exception as e:
#         logger.error(e)
#     return HttpResponseRedirect(reverse(blog))

# ajax 收藏次数
@csrf_exempt
def collection_time(request):
    try:
        if request.method == "POST":
            ids = request.POST
            for id in ids:
                # print ids[id]
                per_id = ids[id]
                collect = Article.objects.filter(id=int(per_id))[0].collect_count + 1
                # print collect
                Article.objects.filter(id=int(per_id)).update(collect_count=collect)
    except Exception as e:
        logger.error(e)
    # return HttpResponseRedirect(reverse(blog))

# 博客详情
def blog_detail(request, id):
    try:
        navbars = navbars_blog.objects.all()
        article = Article.objects.filter(id=id).all()[0]
        # print article
        hot_articles = Article.objects.order_by("-click_count").all()[:4]
        count = Article.objects.count()
        # 文章浏览量
        see_time = Article.objects.filter(id=id)[0].click_count + 1
        # print see_time
        Article.objects.filter(id=id).update(click_count=see_time)
        # 博客评论
        blog_comments = Comment.objects.filter(article=id).order_by('id')
        comment_list = []
        for comment in blog_comments:
            # print comment.pid_id
            # print 'pid:', type(comment.pid_id)
            if comment.pid is None:
                comment_list.append(comment)
            for item in comment_list:
                # print item.user_id
                # print 'user_id:', type(item.user_id)
                if not hasattr(item, 'children_comment'):
                    setattr(item, 'children_comment', [])
                if comment.pid_id == item.user_id:
                    item.children_comment.append(comment)
                    break
        print 'comment_list:', comment_list
        for i in comment_list:
            print 'children:', i.children_comment
        # 评论统计
        all_comments = Comment.objects.filter(article=id).count()
        my_comments = Comment.objects.filter(article=id).filter(user=request.user.id).count()
        # print my_comments
    except Exception as e:
        logger.error(e)
    return render(request, 'blog-article-details.html', locals())


# 发表评论
def comment_post(request, id):
    try:
        if request.user.is_authenticated():
            if request.method == 'POST':
                talk = request.POST.get('text')
                # print id
                # print talk
                # print request.user.id
                comment = Comment.objects.create(user_id=request.user.id,
                                                 username=request.user.username,
                                                 content=talk,
                                                 article_id=id)
                comment.save()
            else:
                return HttpResponse('评论失败')
        else:
            return HttpResponseRedirect('/login')
    except Exception as e:
        logger.error(e)
    return HttpResponseRedirect('/blog/article/%s' % id)

# 发表子评论
def child_comment_post(request, userid, artid):
    try:
        if request.user.is_authenticated():
            if request.method == 'POST':
                talk = request.POST.get('child_text')
                print userid
                print talk
                print artid
                comment = Comment.objects.create(user_id=request.user.id,
                                                 username=request.user.username,
                                                 content=talk,
                                                 article_id=artid,
                                                 pid_id=userid)
                comment.save()
            else:
                return HttpResponse('评论失败')
        else:
            return HttpResponseRedirect('/login')
    except Exception as e:
        logger.error(e)
    return HttpResponseRedirect('/blog/article/%s' % artid)

# 博客文章查询
def blog_search(request):
    try:
        # print 'aaaaa'
        hot_articles = Article.objects.order_by("-click_count").all()[:4]
        navbars = navbars_blog.objects.all()
        if request.method == 'POST':
            search_title = request.POST.get("blog_search")
            # print search_title
            article_list = getPage(request, Article.objects.filter(title__icontains=search_title).all())
            # print article_list
            return render(request, 'blog.html', locals())
        else:
            return render(request, 'blog.html', locals())
    except Exception as e:
        logger.error(e)


def news(request):
    navbars = navbars_blog.objects.all()
    article_list = getPage(request, Article.objects.all())
    hot_articles = Article.objects.order_by("-click_count").all()[:4]
    return render(request, 'blog-news.html', locals())


# 手机图片页面
def picture(request):
    # 分类信息获取
    navbars = navbars_blog.objects.all()
    #产品系列获取
    series_list = Series.objects.all()
    #图片详情
    picture_list = Picture.objects.all()

    return render(request, 'blog-picture.html', locals())

# 手机图片详细页面
def picture_details(request, id):
    # 分类信息获取
    navbars = navbars_blog.objects.all()
    # 图片详情2
    picture2_list = Picture2.objects.filter(Picture=int(id)).all()

    return render(request, 'blog-picture-details.html', locals())


def video(request):
    # 分类信息获取
    navbars = navbars_blog.objects.all()
    category_list = Category.objects.all()
    video_list = Video.objects.order_by()
    return render(request, 'blog-video.html', locals())

def movie(request,id):
    try:
        video_list = Video.objects.filter(id=id)

    except Exception as e:
        pass
    return render(request, 'demo.html', locals())
