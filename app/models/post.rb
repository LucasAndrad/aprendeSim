class Post < ApplicationRecord

  has_one :category
  has_one :subcategory
  has_one :author
  has_many :comments

  def to_param
    url
  end
end
