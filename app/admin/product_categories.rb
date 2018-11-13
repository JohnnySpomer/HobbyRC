# frozen_string_literal: true

ActiveAdmin.register ProductCategory do
  permit_params :categories, :products
end
