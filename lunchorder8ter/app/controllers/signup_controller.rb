class SignupController < ApplicationController

  skip_before_filter :ensure_logged_in

  def index
    render
  end

  def signup
    # user unique
    if User.exists?(username: params[:username])
      flash[:error] = 'Username already exists.'
      return redirect_to('/signup') 
    end

    # email unique
    if User.exists?(email: params[:email])
      flash[:error] = 'Email used for existing account.'
      return redirect_to('/signup') 
    end

    # passwords match
    unless params[:password] == params[:password_again] 
      flash[:error] = 'Password do not match.'
      return redirect_to('/signup')
    end

    # password not empty
    if params[:password].blank?
      flash[:error] = 'Password cannot be blank.'
      return redirect_to('/signup')
    end

    user = User.new do |u|
      u.username = params[:username]
      u.first_name = params[:first_name]
      u.last_name = params[:last_name]
      u.email = params[:email]  
      u.password = params[:password]  
      u.save!
    end

    session[:id] = user.id
    redirect_to('/welcome')
  end
end
