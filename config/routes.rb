Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :plants, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :users, only: [:show, :new, :create]

  resources :comments, only: [:new, :create]

  resources :sessions, only: [:new, :create]
  delete "/sessions", to: "sessions#destroy"

end
