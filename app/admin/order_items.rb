ActiveAdmin.register OrderItem do
    permit_params :orderItemId, :order, :product
end
