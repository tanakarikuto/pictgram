Rails.application.routes.draw do
  get 'session/new'
  get 'users/new'
  get 'pages/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'session/new'
  get 'users/new'
root 'pages#index'
get 'pages/help'
end

Rails.application.routes.draw do
  get 'session/new'
  get 'users/new'
  root 'pages#index'
  get 'pages/link'
end

Rails.application.routes.draw do
  get 'session/new'
  root 'pages#index'
  get 'pages/help'
  
  resources :users
end

Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end