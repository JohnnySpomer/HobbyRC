# frozen_string_literal: true

# class documentation here
class Province < ApplicationRecord
  has_many :addresses

  validates :name, :taxRate, presence: true
  validates :name, uniqueness: true
end
