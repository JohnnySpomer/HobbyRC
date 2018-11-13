# frozen_string_literal: true

# class documentation here
class ProductsController < ApplicationController
  def index
    @products = Product.order(:price)
  end

  def show
    @product = Product.find(params[:productId])
  end
end
