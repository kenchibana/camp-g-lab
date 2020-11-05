class Admin::ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = admin_master.articles.new(article_params)
    if @article.save
      redirect_to ("/admin/articles"), success: '投稿に成功しました'
    else
      flash.now[:denger] = '投稿に失敗しました'
      render :new
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:image, :title, :content).merge(master_id: admin_master.id)
  end
end
