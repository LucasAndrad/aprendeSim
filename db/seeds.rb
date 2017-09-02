# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    user = User.create([{ name: 'Lucas Oliveira', email: 'lucas@email.com', email_confirmation: 'lucas@email.com',
      login: 'lucas', password: 'lucas', password_confirmation: 'lucas', admin: 'true' }])

    categories = Category.create([{ name: 'Matemática' }, { name: 'Biologia' }, 
      { name: 'Farmácia' }, { name: 'Física' }, { name: 'Avaliações' }, { name: 'Programação' },
      { name: 'Química' }, { name: 'Curiosidades' }, { name:  'Geografia' }])

    subcategories = Subcategory.create([{ name: 'Matemática Financeira', category_id: 1 }, 
      { name: 'Funções', category_id: 1 }, { name: 'Genética', category_id: 2 },
      { name: 'Farmacologia', category_id: 3 }, { name: 'Bromatologia', category_id: 3 }, 
      { name:  'Leis de Newton', category_id: 4 }, { name:  'Ruby on Rails', category_id: 6 },
      { name:  'HTML', category_id: 6 }, { name:  'CSS', category_id: 6 }, 
      { name:  'Java Script', category_id: 6 }, { name:  'Restaurantes', category_id: 5 }
      { name:  'Cursos', category_id: 5 }])

    authors = Author.create([
      { name: 'Lucas Andrade', photo: 'http://i.imgur.com/bKgTH5z.jpg', 
        email: "lucasandradeunb@gmail.com",
        description: 'Apenas um universitário, atualmente faço Engenharia de Software na Universidade de Brasília. Grande fã de Rails, e já acumulei uma experiência com Angular 2 também.' },
      { name: 'Ana Luisa Krause', photo: 'http://i.imgur.com/kZoNkvO.jpg',
        email: 'anakrause@gmail.com',
        description: 'Estudante do curso Farmácia '}
    ])