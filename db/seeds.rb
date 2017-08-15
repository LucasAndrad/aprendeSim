# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    user = User.create([{ name: 'Lucas Oliveira', email: 'lucas@email.com', email_confirmation: 'lucas@email.com',
      login: 'lucas', password: 'lucas', password_confirmation: 'lucas', admin: 'true' }])

    categories = Category.create([{ name: 'Matemática' }, { name: 'Bilogia' }, { name: 'Farmácia' }, 
      { name: 'Física' }])

    subcategories = Subcategory.create([{ name: 'Matemática Financeira', category_id: 1 }, 
      { name: 'Funções', category_id: 1 }, { name: 'Genética', category_id: 2 },
      { name: 'Farmacologia', category_id: 3 }, { name: 'Bromatologia', category_id: 3 }, 
      { name:  'Leis de Newton', category_id: 4 }])