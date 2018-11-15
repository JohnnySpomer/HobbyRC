# frozen_string_literal: true

# class documentation here
class Status < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
