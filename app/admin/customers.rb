ActiveAdmin.register Customer do
    permit_params :customerId, :name, :discount, :image, :address, :order
end
