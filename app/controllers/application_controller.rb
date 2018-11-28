# frozen_string_literal: true

# class documentation here
class ApplicationController < ActionController::Base

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
