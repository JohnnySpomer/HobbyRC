# frozen_string_literal: true

# class documentation here
class Product < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  accepts_nested_attributes_for :product_categories, allow_destroy: true

  belongs_to :product_status
  
  validates :description, :count, :price, :name, presence: true
  validates :description, uniqueness: true

  mount_uploader :image, ImageUploader
end
