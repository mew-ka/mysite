from . import views
from django.urls import path

urlpatterns = [
    path('', views.PostList.as_view(), name='home'),
    path('<slug:slug>/', views.PostDetail.post_detail, name='post_detail'),
    path('hello_world', views.HelloWorld.as_view(), name='hello_world')
]
