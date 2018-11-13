# frozen_string_literal: true

# class documentation here
class Employee < ApplicationRecord
  belongs_to :customer

  validates :position, :customer, presence: true
end
