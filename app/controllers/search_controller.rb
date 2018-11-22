# frozen_string_literal: true

# class documentation here
class SearchController < ApplicationController
  def index
    @categorys = Category.all
  end

  def results
    @category = Category.find(params[:category])
    @products = @category.products

    @product_names = @products.where(
      'name LIKE ?',
      "%#{params[:q]}%"
    )

    @product_descriptions = @products.where(
      'description LIKE ?',
      "%#{params[:q]}%"
    )
  end
end
