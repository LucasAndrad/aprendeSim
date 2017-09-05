class PagesController < ApplicationController
  
  def home
    @posts = Post.all.order("created_at DESC").limit(10)
    @categories = Category.all.order(:name).limit(10)
    @posts_most_views = Post.all.order("visits DESC").limit(15)
  end

  def about
  
  end

end
