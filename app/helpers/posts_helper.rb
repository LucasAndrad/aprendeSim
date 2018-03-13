module PostsHelper

  def navbar_posts
    @posts = Post.all.order("created_at DESC").limit(5)
  end

  def subcategory_icon(id)
    subcategory = Subcategory.find_by_id(id)
    if subcategory
      # pq ta indo vazio? nullo?
      subcategory.icon.to_s
    else
      'icons/ruby-icon.png'
    end
  end
end
