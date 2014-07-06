class NewuserController < ApplicationController
  
  def index
    render
  end

  def add_user
    render(:json => params)
    user = User.new()
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.username = params[:username]
    user.email = params[:email]
    # user.save
  end
end
