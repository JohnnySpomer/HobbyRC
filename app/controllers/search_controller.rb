class SearchController < ApplicationController
  def index 
    @categorys = Category.all 
  end

  def results
    @product_names = Product.where(
      'name LIKE ?',
      "%#{params[:q]}%" )
    @product_descriptions = Product.where(
      'description LIKE ?',
      "%#{params[:q]}%" )
  end
end
