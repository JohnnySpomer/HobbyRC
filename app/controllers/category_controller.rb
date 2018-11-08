class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:categoryId])
    @products = @category.products
  end
end
