Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :home do
    resources :votes, only: [:create, :destroy]
  end
  resource :followings, only: [:create]


  get 'home/index'
  root to: "home#index"
end
