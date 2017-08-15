class Post < ApplicationRecord

  has_one :category
  has_one :subcategory

  def to_param
    url
  end
end
