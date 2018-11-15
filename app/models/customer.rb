# frozen_string_literal: true

# class documentation here
class Customer < ApplicationRecord
  belongs_to :address

  has_one :employee, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :name, :email, :discount, presence: true
  validates :email, uniqueness: true
end
