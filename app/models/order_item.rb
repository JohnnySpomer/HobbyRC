# frozen_string_literal: true

# class documentation here
class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
end
