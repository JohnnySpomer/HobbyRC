Rails.application.routes.draw do
  get 'products/show'
  get 'products/view'
  get 'contact', to: "contact#show", as: "contact"
  get 'about', to: "about#show", as: "about"
  get 'categories', to: "category#index", as: "categories"
  get 'categories/:categoryId', to: "category#show", as: 'category'
  get 'products', to: "products#index", as: 'products'
  get 'products/:productId', to: "products#show", as: 'product'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
