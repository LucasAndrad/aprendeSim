Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Pages
  root 'pages#home', as: 'home'
  get 'about' => 'pages#about', as: 'about'

# Sessions
  get 'login' => 'sessions#new', as: 'login'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

end
