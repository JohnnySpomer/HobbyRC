ActiveAdmin.register Order do
    permit_params :orderId, :date, :productCount, :totalPrice, :completed
end
