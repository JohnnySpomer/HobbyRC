# frozen_string_literal: true

# class documentation here
class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  belongs_to :status
  belongs_to :customer

  accepts_nested_attributes_for :order_items, allow_destroy: true

  validates :date, :productCount, :totalPrice, :customer, presence: true

  def subtotal
    c = order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.product.price) : 0 }
    c.sum
  end
  private
  def set_order_status
    self.order_status_id = 3
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
