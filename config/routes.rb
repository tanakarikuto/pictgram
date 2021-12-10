Rails.application.routes.draw do
  
  get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get '/comments/new', to: 'comments#new'
  post '/comments', to: 'comments#create'
end


  