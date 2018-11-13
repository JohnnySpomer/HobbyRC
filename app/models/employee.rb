class Employee < ApplicationRecord
  belongs_to :customer
  
  validates :position, :customer, presence: true
end