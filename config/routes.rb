Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plants, only: [:show, :new]
  root 'users#index'
  resources :users, only: [:index, :show, :new]

end
