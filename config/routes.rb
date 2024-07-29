# config/routes.rb
Rails.application.routes.draw do
  resources :universities
  resources :careers
  resources :roles
  resources :users
  resources :professors
  resources :courses
  resources :materials
  resources :enrollments
  resources :notifications

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Rutas para OmniAuth
  get '/auth/:provider/callback', to: 'sessions#google_auth'
  get '/auth/failure', to: redirect('/')

  root 'users#index'
end
