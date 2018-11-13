# frozen_string_literal: true

ActiveAdmin.register OrderItem do
  permit_params :orderItemId, :order, :product
end
