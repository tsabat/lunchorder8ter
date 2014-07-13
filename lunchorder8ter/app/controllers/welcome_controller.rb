class WelcomeController < ApplicationController

  def welcome
    render
  end

  def logout
    session[:id] = nil
    redirect_to(:welcome)
  end
end
