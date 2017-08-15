class Post < ApplicationRecord

  has_one :category
  has_one :subcategory
  has_many :comments

  def to_param
    url
  end
end
