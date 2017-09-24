# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    user = User.create([{ name: 'Lucas Oliveira', email: 'lucas@email.com', email_confirmation: 'lucas@email.com',
      login: 'lucas', password: 'lucas', password_confirmation: 'lucas', admin: 'true' }])

    categories = Category.create([
      { name: 'Matemática' }, { name: 'Biologia' },
      { name: 'Farmácia' }, { name: 'Física' },
      { name: 'Avaliações' }, { name: 'Programação' },
      { name: 'Química' }, { name: 'Curiosidades' },
      { name:  'Geografia' }, { name:  'Política' },
      { name:  'Estatísca' }, { name:  'Filosofia' },
      { name:  'Sociologia' }, { name:  'Artes' },
      { name:  'Eng. Software' }
    ])

    subcategories = Subcategory.create([
      { name: 'Matemática Financeira', category_id: 1 }, 
      { name: 'Funções', category_id: 1 },
      { name: 'Matriz', category_id: 1 },
      { name: 'Logaritmo', category_id: 1 },
      { name: 'Números Complexos', category_id: 1 },
      { name: 'Trigonometria', category_id: 1 },

      { name: 'Genética', category_id: 2 },

      { name: 'Farmacologia', category_id: 3 },
      { name: 'Bromatologia', category_id: 3 },
      { name: 'Fitoterapia', category_id: 3 },

      { name:  'Leis de Newton', category_id: 4 },
      { name:  'Leis de Kleper', category_id: 4 },
      { name:  'Eletrodinâmica', category_id: 4 },
      { name:  'Eletrostáica', category_id: 4 },
      { name:  'Eletromagnestismo', category_id: 4 },
      { name:  'Ondas', category_id: 4 },
      { name:  'Ótica', category_id: 4 },

      { name:  'Restaurantes', category_id: 5 },
      { name:  'Cursos', category_id: 5 },

      { name:  'Ruby on Rails', category_id: 6 },
      { name:  'HTML', category_id: 6 },
      { name:  'CSS', category_id: 6 },
      { name:  'Java Script', category_id: 6 },
      { name:  'Angular 2', category_id: 6 },
      { name:  'Type Script', category_id: 6 },
      { name:  'C', category_id: 6 },
      { name:  'Java', category_id: 6 },
      { name:  'Python', category_id: 6 },
      { name:  'Machine Learning', category_id: 6 },
      { name:  'Git', category_id: 6 },

      { name:  'Balanceamento', category_id: 7 },
      { name:  'Distribuição Eletrônica', category_id: 7 },
      { name:  'Radeoatividade', category_id: 7 },
      { name:  'Funções Orgânicas', category_id: 7 },
      { name:  'Funções Inogânicas', category_id: 7 },
      { name:  'Ligações Químicas', category_id: 7 },
      { name:  'Gases', category_id: 7 },
      { name:  'Tabela Periódica', category_id: 7 },

      { name:  'Política Brasileira', category_id: 10 },

      { name:  'Scrum', category_id: 15 },
      { name:  'RUP', category_id: 15 },
      { name:  'Métodos Ágeis', category_id: 15 },
      { name:  'Versionamento de Software', category_id: 15 }
    ])

    authors = Author.create([
      { name: 'Lucas Andrade', photo: 'http://i.imgur.com/bKgTH5z.jpg', 
        email: "lucasandradeunb@gmail.com",
        description: 'Apenas um universitário, atualmente faço Engenharia de Software na Universidade de Brasília. Grande fã de Rails, e já acumulei uma experiência com Angular 2 também.' },
      { name: 'Ana Luisa Krause', photo: 'http://i.imgur.com/kZoNkvO.jpg',
        email: 'anakrause@gmail.com',
        description: 'Estudante do curso Farmácia '}
    ])