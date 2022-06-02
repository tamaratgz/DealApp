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
  resources :projects
  resources :polls do
    resources :answers, only: [:new, :create, :destroy]
  end
  resources :answers, only: [] do
    resources :votes, only: [:create]
  end
end
