# config/routes.rb
Rails.application.routes.draw do
  get 'pages/home'
  
  resources :universities
  resources :careers
  resources :roles
  resources :users
  resources :professors
  resources :courses
  resources :materials
  resources :enrollments
  resources :notifications

  root 'pages#home'  # Ajusta la raíz para que apunte a la página de bienvenida
  
  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Rutas para OmniAuth
  get '/auth/:provider/callback', to: 'sessions#google_auth'
  get '/auth/failure', to: redirect('/')

  # Evita la duplicación de rutas de usuarios
  resources :users, only: [:new, :create]
end
