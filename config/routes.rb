Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :new, :create]


  resources :plants, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :comments, only: [:new, :create]

  resources :sessions, only: [:new, :create]
  delete "/sessions", to: "sessions#destroy"

  resources :tasks, only: [:new, :create, :edit, :update, :destroy]

end
