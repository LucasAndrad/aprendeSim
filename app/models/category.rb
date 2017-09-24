class Category < ApplicationRecord

  has_many :subcategories
  has_many :posts

  validates :name, 
    presence: {message: 'O nome é obrigatório'},
    uniqueness: {message: 'Já exite uma Categoria com esse nome'}
  
end
