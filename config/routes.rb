Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :home 
  resources :votes, only: [:create, :destroy]
  resource :followings, only: [:create, :destroy]


  get 'home/index'
  root to: "home#index"
end
