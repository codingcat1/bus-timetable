Rails.application.routes.draw do
  get 'signmeup', to: 'users#new', as: 'signmeup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :users
  resources :sessions
  resources :stations
  root :to => 'stations#index'
  resources :lines
  resources :stops
end
