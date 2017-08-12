Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Pages
  root 'pages#home', as: 'home'
  get 'about' => 'pages#about', as: 'about'

# Posts
  resources :posts, param: :url

# Users
  get 'register' => 'users#new', as: 'register'
  get 'perfil' => 'users#show', as: 'perfil'
  patch 'update_password' => 'users#update_password'
  patch 'user_destroy' => 'users#destroy'
  post 'users/create' => 'users#create'
  get 'users/destroy'

# Sessions
  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

end
