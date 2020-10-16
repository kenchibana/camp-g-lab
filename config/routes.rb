Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  get 'topics/index'
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get  'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',to: 'favorites#destroy'

  get 'cooments/index'
  get 'comments/new' 
  post '/comments', to: "comments#create"
  delete '/comments', to: "comments#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :masters
  end
end