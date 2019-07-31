Rails.application.routes.draw do
  get 'payments/new'
  get 'services/my_services', to: 'services#my_services', as: 'my_services'
  devise_for :users
  root to: 'home#index'
  resources :services
  resources :proposals, only: [:index, :new, :create]
end
