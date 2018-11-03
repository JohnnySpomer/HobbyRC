ActiveAdmin.register Product do
    permit_params :productId, :description, :count, :weight, :price, :image
end
