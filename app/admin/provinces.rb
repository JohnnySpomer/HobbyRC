# frozen_string_literal: true

ActiveAdmin.register Province do
  permit_params :provinceId, :name, :taxRate
end
