class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :ensure_logged_in

  def ensure_logged_in
    if session[:id]
      @user = User.find(session[:id])
    else
      redirect_to(:login)
    end
  end
end
