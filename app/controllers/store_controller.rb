class StoreController < ApplicationController

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
 
  def index
    @products = Product.order(:title)
    @count = increment_count
    @show_message = "You`ve been here #{@count} times" if session[:counter] > 5
    @cart = current_cart
  end
end
