Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :home


  get 'home/index'
  root to: "home#index"
end
