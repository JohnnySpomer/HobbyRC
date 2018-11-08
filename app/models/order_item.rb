class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product

    has_one :order
    has_one :product
end
