class OrderController < ApplicationController
 
  def index
    render
  end

  def order
    user = User.find(session[:id])
    order = Order.new do |o|
      o.description = params[:description]
      o.user_id = user.id
      o.save
    end
    session[:order_id] = order.id
    redirect_to("/order/confirmation?order_id=#{order.id}")
  end

  def confirmation
    @order = Order.find(params[:order_id])

    render
  end

end