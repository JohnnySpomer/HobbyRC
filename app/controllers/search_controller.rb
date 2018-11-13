class SearchController < ApplicationController
  def index
    @categorys = Category.all
  end

  def results
    @productNames = Product.where('name LIKE ?', "%#{params[:q]}%")
    @productDescriptions = Product.where('description LIKE ?', "%#{params[:q]}%")
  end
end
