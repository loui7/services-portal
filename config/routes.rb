Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'services/my_services', to: 'services#my_services', as: 'my_services'
  resources :services
end
