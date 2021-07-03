Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :home
  resource :followings, only: [:create]


  get 'home/index'
  root to: "home#index"
end
