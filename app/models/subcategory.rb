class Subcategory < ApplicationRecord

  belongs_to :category
  has_many :posts

  validates :name, 
    presence: {message: 'O nome é obrigatório'},
    uniqueness: {message: 'Já exite uma Categoria com esse nome'}

end
