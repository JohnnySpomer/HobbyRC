class Product < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    
    validates :description, :count, :price, presence: true
    validates :description, uniqueness: true
end
