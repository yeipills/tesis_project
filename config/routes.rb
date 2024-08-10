# config/routes.rb
Rails.application.routes.draw do
  root 'pages#home'
  
  get 'main', to: 'pages#main'
  get 'home', to: 'pages#home'

  resources :universities
  resources :careers
  resources :roles
  resources :users
  resources :professors
  resources :courses
  resources :materials
  resources :enrollments
  resources :notifications

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Rutas para OmniAuth
  get '/auth/:provider/callback', to: 'sessions#google_auth'
  get '/auth/failure', to: redirect('/')

  # Rutas de errores
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
  match '/422', to: 'errors#unprocessable_entity', via: :all
end
