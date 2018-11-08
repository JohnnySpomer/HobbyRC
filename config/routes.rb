Rails.application.routes.draw do
  get 'contact/show'
  get 'about/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [:index, :show]
  root to: 'products#index'
end
