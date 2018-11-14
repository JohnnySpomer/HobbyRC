# frozen_string_literal: true

# class documentation here
class About < ApplicationRecord
  validates :name, :mainText, presence: true
  validates :name, uniqueness: true
end
