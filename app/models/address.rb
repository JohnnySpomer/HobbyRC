class Address < ApplicationRecord
  belongs_to :province

  has_one :province
  has_many :customers

  validates :address, :city, :province, :postalCode, :country, presence: true
end
