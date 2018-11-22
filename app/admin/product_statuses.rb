# frozen_string_literal: true

ActiveAdmin.register ProductStatus do
  permit_params :product_status_id, :name
end
