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
      flash.now[:denger] = '投稿に失敗しました'
      render :new
    end
  end
  
  def edit
    @review = Review.find(params[:id])
  end
  def updete
    @review = Review.find_by(id: params[:id])
    if @review.update(review_params)
      redirect_to ("/reviews"), success: '編集しました'
    else
      flash.now[:denger] = '編集に失敗しました'
      render :edit
    end
  end
  
  def destroy
    review = Review.find(params[:id])
    if review.user_id == current_user.id
    review.destroy
    end
    redirect_to :root
  end
  
  private
  def review_params
    params.require(:review).permit(:image, :description, :user_id).merge(user_id: current_user.id)
  end
  
  def login_check
    unless user_signed_in?
      flash[:alert] = "ログインしてください"
      redirect_to root_path
    end
  end
end
