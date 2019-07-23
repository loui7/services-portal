Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'services', to: 'services#index', as: 'services'
end
