ActiveAdmin.register Category do
    permit_params :name, product_categories_attributes: [:id, :product_id, :category_id, :_destroy]

end
