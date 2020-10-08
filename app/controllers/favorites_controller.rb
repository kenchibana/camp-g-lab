class FavoritesController < ApplicationController
  def index
    @favorite_reviews = current_user.favorite_reviews
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.review_id = params[:review_id]

    if favorite.save
      redirect_to reviews_path, success: 'お気に入りに登録しました'
    else
      redirect_to reviews_path, danger: 'お気に入りに登録に失敗しました'
    end
  end
  
  def destroy
    @favorite_reviews = Favorite.find_by(review_id: params[:review_id], user_id: current_user.id)
    if @favorite_reviews.destroy
      redirect_to reviews_path, success: 'お気に入りを解除しました'
    else
      redirect_to reviews_path, danger: 'お気に入りを解除できませんでした'
    end
  end
end