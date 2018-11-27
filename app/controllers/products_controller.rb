# frozen_string_literal: true

# class documentation here
class ProductsController < ApplicationController
  def index
    @order_item = current_order.order_items.new
    if (!params.has_key?(:product_status) || params[:product_status] == "") then
      @products = Product.order(:name).page(params[:page]).per(5)
    else
      @status = ProductStatus.find(params[:product_status])
      @products = @status.products.order(:name).where(
      'product_status_id LIKE ?',
      "%#{params[:category]}%"
      ).page(params[:page]).per(5)
    end
  end

  def show
    @product = Product.find(params[:productId])
  end
end
