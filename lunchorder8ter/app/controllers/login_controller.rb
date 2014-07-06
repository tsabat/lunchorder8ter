class LoginController < ApplicationController

  skip_before_filter :ensure_logged_in

  def login
    
  end

  def index
    render
  end
end
