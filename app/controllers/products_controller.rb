class ProductsController < ApplicationController
  
  def index
    @products = Products.order(:price)
  end

  def view
    @product = Products.find(params[:productId)
  end

end
