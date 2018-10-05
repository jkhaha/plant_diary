Rails.application.routes.draw do
  root "sessions#index"

  resources :users, only: [:show, :new, :create]

  resources :plants, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :comments, only: [:create, :destroy]

  resources :tasks, only: [:create, :destroy]

  resources :sessions, only: [:new, :create]

  delete "/sessions", to: "sessions#destroy"
end
