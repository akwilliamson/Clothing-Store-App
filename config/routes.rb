Store::Application.routes.draw do
  root :to => 'products#index'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :products
  resources :users
  resources :sessions
end
