module PostsHelper

  def navbar_posts
    @posts = Post.all.order("created_at DESC").limit(5)
  end

  def subcategory_icon(id)
    subcategory = Subcategory.find(id)
    if subcategory.icon && subcategory.icon != nil
      subcategory.icon.to_s
    else
      'icons/code-icon.svg'
    end
  end
end
