class Post < ApplicationRecord

  def to_param
    url
  end
end
