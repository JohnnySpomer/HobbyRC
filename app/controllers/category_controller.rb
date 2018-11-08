class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:categoryId])
    @products = Product.find(category_id = @category.id)
  end
end
