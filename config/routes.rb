Rails.application.routes.draw do
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'sessions/new'
  resources 'users'
  
  namespace :admin do
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    resources :masters, :apps, :articles, :campsites, :gears
  end
  
  resources :reviews, :campsites, :articles, :gears
  
  
  root 'pages#index'
  get 'pages/help'
  
  get  'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',to: 'favorites#destroy'

  get 'comments/index'
  get 'comments/new' 
  post '/comments', to: "comments#create"
  delete '/comments', to: "comments#destroy"
end