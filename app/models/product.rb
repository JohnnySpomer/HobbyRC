class Product < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :product_categories
    has_many :categories, through: :product_categories
    
    validates :description, :count, :price, presence: true
    validates :description, uniqueness: true
end
