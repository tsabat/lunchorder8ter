class OrderController < ApplicationController
 
  def index
    render
  end

  def order
    user = User.find_by_username(params[:username])
    order = Order.new()
    order.description = params[:description]
    order.user_id = user.object_id
    # order.save
    redirect_to("/order/confirmation?order_id=#{order.object_id}")
  end

  def confirmation
    render
  end

end
