class LoginController < ApplicationController

  skip_before_filter :ensure_logged_in

  def index
    render
  end

  def login
    unless User.exists?(username: params[:username])
      # check that username exists
      flash[:error] = 'Username or password incorrect.'
      return redirect_to('/login')
    end

    user = User.find_by(username: params[:username])

    unless user.password == params[:password]
      # check that password is correct
      flash[:error] = 'Username or password** incorrect.'
      return redirect_to('/login')
    end

    session[:id] = user.id
    redirect_to('/welcome')
  end
end
