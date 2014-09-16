Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :stations
  root :to => 'stations#index'
  resources :lines
  resources :stops
end
