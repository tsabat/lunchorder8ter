class OrderController < ApplicationController
 
  def index
    render
  end

  def order
    order = Order.new do |o|
      o.user_id = @user.id
      o.description = params[:description]
      o.price = params[:price]
      o.save
    end
    redirect_to("/order/confirmation?order_id=#{order.id}")
  end

  def confirmation
    @order = Order.find(params[:order_id])
    render
  end

  def summary
    @user_orders = Order.where("user_id = ?", @user.id ).order('created_at DESC')
    render
  end

end
