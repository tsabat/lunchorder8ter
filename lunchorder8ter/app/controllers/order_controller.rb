class OrderController < ApplicationController
 
  def index
    render
  end

  def order
    user = User.find_by_username(params[:username])
    order = Order.new
    order.description = params[:description]
    order.user_id = user.id
    order.save
    session[:order_id] = order.id
    redirect_to("/order/confirmation?order_id=#{order.id}")
  end

  def confirmation
    @order = Order.find(params[:order_id])

    render
  end

end