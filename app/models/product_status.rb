# frozen_string_literal: true

class ProductStatus < ApplicationRecord
  has_many :products, dependent: :destroy
end
