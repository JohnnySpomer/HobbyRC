# frozen_string_literal: true

# class documentation here
class Contact < ApplicationRecord
  belongs_to :address

  validates :name, :phone, :text, presence: true
  validates :name, uniqueness: true
end
