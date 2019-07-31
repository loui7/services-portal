Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :services, only: [:index, :new, :create, :show]
  resources :proposals, only: [:index, :new, :create]
end
