Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: 'pages#login_home'
  end
  unauthenticated :user do
    root to: 'pages#home', as: :unauthenticated_root
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:show]
  resources :projects do
    get "success", on: :member
  end
  resources :polls do
    get "success" , on: :member
    resources :answers, only: [:new, :create, :destroy]
  end
  resources :answers, only: [] do
    resources :votes, only: [:create]
  end
  resources :guests, only: :create
end
