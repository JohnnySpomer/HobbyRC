# frozen_string_literal: true

ActiveAdmin.register Employee do
  permit_params :employeeId, :position, :customer_id
end
