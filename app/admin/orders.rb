# frozen_string_literal: true

ActiveAdmin.register Order do
  permit_params :orderId, :customer_id, :status_id, :date, :productCount, :totalPrice, :completed, 
  order_items_attributes: [:id, :product_id, :order_id, :_destroy]

  index do 
    selectable_column
    column :id
    column :date
    column :productCount
    column :totalPrice
    column :status
    column :customer
    column :products do |order|
      order.products.map { |prod| prod.description }.join(", ").html_safe
    end
    actions
  end

  show do |order|
    attributes_table do
      row :date
      row :productCount
      row :totalPrice
      row :status
      row :customer
      row :products do |order|
        order.products.map { |prod| prod.description }.join(", ").html_safe
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Orders" do
      f.input :date
      f.input :productCount
      f.input :totalPrice
      f.input :status
      f.input :customer
      f.has_many :order_items, allow_destroy: true do |n_f|
        n_f.input :product
      end
    end

  f.actions
  end
end
