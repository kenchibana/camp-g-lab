class Admin::ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new
    @articles = Article.new
  end
  
  def create
    @article = current_user.articles.new(article_params)
    
    if @article.save
      redirect_to articles_path, success: '投稿に成功しました'
    else
      flash.now[:denger] = '投稿に失敗しました'
      render :new
    end
  end
end
