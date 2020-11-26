class PostsController < ApplicationController
  
  def index
    @review = Review.all
  end
end
