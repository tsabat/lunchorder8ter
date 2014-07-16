class OrderController < ApplicationController
 
  def index
    render
  end

  def order
    # user = User.find(session[:id])
    order = Order.new do |o|
      o.user_id = @user.id
      o.description = params[:description]
      o.save
    end
    # session[:order_id] = order.id
    redirect_to("/order/confirmation?order_id=#{order.id}")
  end

  def confirmation
    @order = Order.find(params[:order_id])

    render
  end

  def summary
    @username = @user.username
    @user_orders = Order.where("user_id = ?", session[:id]).order('created_at DESC')
    # @order_date_description = @user_orders.select do | s,y |
      
    end
    render
  end

end