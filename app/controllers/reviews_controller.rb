class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.includes(:favorite_users)
  end
  
  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.new(review_params)

    if @review.save
      redirect_to reviews_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def topic_params
    params.require(:review).permit(:image, :description).merge(user_id: current_user.id)
  end
  
  def login_check
    unless user_signed_in?
      flash[:alert] = "ログインしてください"
      redirect_to root_path
    end
  end
end