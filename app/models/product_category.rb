class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category

  has_one :category
  has_one :product
end
