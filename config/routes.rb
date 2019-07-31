Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :services
  resources :proposals, only: [:index, :new, :create]
  get 'services/my_services', to: 'services#my_services', as: 'my_services'
end
