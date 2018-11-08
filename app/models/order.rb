class Order < ApplicationRecord
    has_one :status
    has_many :order_items
    has_many :products, through: :order_items
    
    accepts_nested_attributes_for :order_items, allow_destroy: true

    validates :date, :productCount, :totalPrice, presence: true
end
