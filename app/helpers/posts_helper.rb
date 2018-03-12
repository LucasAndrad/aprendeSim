module PostsHelper

  def navbar_posts
    @posts = Post.all.order("created_at DESC").limit(5)
  end
end
