class ProductStatus < ApplicationRecord
  has_many :products, dependent: :destroy
end
