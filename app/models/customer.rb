class Customer < ApplicationRecord
  belongs_to :address
  belongs_to :order
end
