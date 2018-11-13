# frozen_string_literal: true

# class documentation here
class Customer < ApplicationRecord
  belongs_to :address

  has_one :employee
  has_many :orders

  validates :name, :email, :discount, presence: true
  validates :email, uniqueness: true
end
