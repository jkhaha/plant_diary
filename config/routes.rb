Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :plants, only: [:show, :new, :create, :edit, :update]

  resources :users, only: [:show, :new]

  resources :comments, only: [:new, :create]
end
