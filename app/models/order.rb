# frozen_string_literal: true

# class documentation here
class Order < ApplicationRecord
  has_many :order_items
  has_many :products, through: :order_items

  belongs_to :status
  belongs_to :customer
  
  accepts_nested_attributes_for :order_items, allow_destroy: true

  validates :date, :productCount, :totalPrice, :customer, presence: true
end
