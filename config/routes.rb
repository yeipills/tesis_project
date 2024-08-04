Rails.application.routes.draw do
  root 'pages#home'
  
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

  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, only: [:new, :create]

  # Rutas para OmniAuth
  get '/auth/:provider/callback', to: 'sessions#google_auth'
  get '/auth/failure', to: redirect('/')
end
