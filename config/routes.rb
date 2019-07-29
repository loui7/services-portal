Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :services, only: [:index, :new, :create]
  resources :proposals, only: [:index, :new, :create]
end
