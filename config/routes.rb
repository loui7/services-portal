Rails.application.routes.draw do
  get 'payments/new'
  get 'services/my_services', to: 'services#my_services', as: 'my_services'
  get 'proposals', to: 'proposals#index', as: 'proposals'
  devise_for :users
  root to: 'home#index'
  resources :services do
    resources :proposals, only: [:new, :create, :edit, :update] do
      resources :payments, only: [:new]
    end
  end
end
