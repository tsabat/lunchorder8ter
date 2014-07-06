class SignupController < ApplicationController

  skip_before_filter :ensure_logged_in

  def index
    render
  end

  def signup
    # passwords match
    unless params[:password] == params[:password_again] 
      flash[:error] = 'Password do not match.'
      return redirect_to('/signup')
    end

    # user unique
    if User.where(username: params[:username]).last
      flash[:error] = 'Username already exists.'
      return redirect_to('/signup') 
    end

    # password not empty
    if params[:password].blank?
      flash[:error] = 'Password cannot be blank.'
      return redirect_to('/signup')
    end

    user = User.new
    user.username = params[:username]
    user.password = params[:password]  
    user.save!

    session[:id] = user.id
    redirect_to('/welcome')
  end
end
