Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :masters
  end
end