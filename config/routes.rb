Rails.application.routes.draw do
  get 'sessions/new'
  
  get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :topics
end


  