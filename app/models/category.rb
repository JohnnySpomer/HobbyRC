class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories
    accepts_nested_attributes_for :product_categories, allow_destroy: true

    validates :name, presence: true
end
