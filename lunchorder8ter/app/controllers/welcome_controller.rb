class WelcomeController < ApplicationController

  def index
    render
  end

  def logout
    session[:id] = nil
    redirect_to(:welcome)
  end
end
