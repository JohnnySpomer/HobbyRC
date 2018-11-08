ActiveAdmin.register Product do
    permit_params :productId, :description, :count, :weight, :price, :image, 
    product_categories_attributes: [:id, :product_id, :category_id, :_destroy],
    order_items_attributes: [:id, :product_id, :order_id, :_destroy]
    
    index do 
        selectable_column
        column :id
        column :description
        column :count
        column :weight
        column :price
        column :image
        column :category do |product|
            product.categories.map { |cat| cat.name}.join(", ").html_safe
        end
        actions
    end

    show do |order|
        attributes_table do
            row :id
            row :description
            row :count
            row :weight
            row :price
            row :image
            row :category do |product|
                product.categories.map { |cat| cat.name}.join(", ").html_safe
            end
        end
    end

    form do |f|
        f.semantic_errors *f.object.errors.keys

        f.inputs "Products" do
            f.input :description
            f.input :count
            f.input :weight
            f.input :price
            f.input :image
            f.has_many :product_categories, allow_destroy: true do |n_f|
                n_f.input :category
            end
        end

    f.actions
    end
end
