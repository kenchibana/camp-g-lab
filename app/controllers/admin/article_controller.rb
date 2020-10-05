class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = current_master.articles.new(article_params)

    if @article.save
      redirect_to articles_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:image, :description).merge(master_id: current_master.id)
  end
  
  def login_check
    unless master_signed_in?
      flash[:alert] = "ログインしてください"
      redirect_to root_path
    end
  end
end