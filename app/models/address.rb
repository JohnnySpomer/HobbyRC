class Address < ApplicationRecord
  belongs_to :province

  has_many :customers

  validates :address, :city, :postalCode, :country, presence: true

  def name 
    address
  end
end