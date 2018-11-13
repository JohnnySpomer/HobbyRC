# frozen_string_literal: true

ActiveAdmin.register Status do
  permit_params :status_id, :name
end
