# frozen_string_literal: true

Rails.application.routes.draw do

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'search', to: 'search#index', as: 'search'
  get 'results', to: 'search#results', as: 'results'
  # get 'products/show'
  # get 'products/view'
  get 'contact', to: 'contact#show', as: 'contact'
  get 'about', to: 'about#show', as: 'about'
  get 'categories', to: 'category#index', as: 'categories'
  get 'categories/:categoryId', to: 'category#show', as: 'category'
  # get 'products', to: 'products#index', as: 'products'
  get 'products/:productId', to: 'products#show', as: 'product'

  resources :charges
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
