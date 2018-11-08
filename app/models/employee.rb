class Employee < ApplicationRecord
  belongs_to :customer

  has_one :customer
  
  validates :position, :customer, presence: true
end
