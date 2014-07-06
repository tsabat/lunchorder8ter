class UserController < ApplicationController
  
  def index
    render
  end

  def params_as_json
    render(:json => params)
  end

  def add_user
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.username = params[:username]
    @user.email = params[:email]
    @user.save
    render
  end
end
