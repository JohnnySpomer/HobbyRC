# frozen_string_literal: true

# class documentation here
class Status < ApplicationRecord
  has_many :orders

  validates :name, presence: true
  validates :name, uniqueness: true
end
