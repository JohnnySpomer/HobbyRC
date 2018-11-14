# frozen_string_literal: true

# class documentation here
class Address < ApplicationRecord
  belongs_to :province

  has_many :customers
  has_many :contacts

  validates :address, :city, :postalCode, :country, presence: true

  def name
    address
  end
end
