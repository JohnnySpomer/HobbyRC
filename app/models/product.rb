class Product < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :product_categories
    has_many :categories, through: :product_categories
    accepts_nested_attributes_for :product_categories, allow_destroy: true
    
    validates :description, :count, :price, :name, presence: true
    validates :description, uniqueness: true

    mount_uploader :image, ImageUploader
end
