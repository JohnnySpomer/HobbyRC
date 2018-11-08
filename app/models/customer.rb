class Customer < ApplicationRecord
  belongs_to :address
  belongs_to :order

  has_many :orders
  has_one :employee
  has_one :address

  validates :name, :email, :discount, presence: true
  validates :email, uniqueness: true
end
