# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :productId, :description, :count, :weight, :price, :product_status_id, :image, :name, product_categories_attributes: [:id, :product_id, :category_id, :_destroy], order_items_attributes: [:id, :product_id, :order_id, :_destroy]

  index do
    selectable_column
    column :id
    column :name
    column :description
    column :count
    column :weight
    column :price
    column :product_status
    column :image
    column :category do |product|
      product.categories.map { |cat| cat.name }.join(', ').html_safe
    end
    actions
  end

  show do |order|
    attributes_table do
      row :id
      row :name
      row :description
      row :count
      row :weight
      row :price
      row :product_status
      row :image
      row :category do |product|
        product.categories.map { |cat| cat.name }.join(', ').html_safe
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Products' do
      f.input :name
      f.input :description
      f.input :count
      f.input :weight
      f.input :price
      f.input :product_status
      f.input :image
      f.has_many :product_categories, allow_destroy: true do |n_f|
        n_f.input :category
      end
    end

    f.actions
  end
end
