Rails.application.routes.draw do
  get 'payments/new'
  get 'services/my_services', to: 'services#my_services', as: 'my_services'
  get 'services/:id/mark_complete', to: 'services#complete_service', as: 'complete_service'
  patch 'services/:service_id/proposals/:id/accept', to: 'proposals#accept', as: 'accept_proposal'
  get 'proposals', to: 'proposals#index', as: 'proposals'
  devise_for :users
  root to: 'home#index'
  resources :services do
    resources :proposals, only: [:new, :create, :edit, :update, :destroy] do
      resources :payments, only: [:new]
    end
  end
end
