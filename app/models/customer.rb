class Customer < ApplicationRecord
  belongs_to :address
  belongs_to :order

  has_one :employee

  validates :name, :email, :discount, presence: true
  validates :email, uniqueness: true
end
