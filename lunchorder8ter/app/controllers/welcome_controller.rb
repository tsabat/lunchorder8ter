class WelcomeController < ApplicationController
  before_filter :find_model

  def welcome
    render
    # if session[:id]
    #   @user = User.find(session[:id])
    #   render
    # else
    #   redirect_to(:login)
    # end
  end

  def stuff
    render(:json => {stuff: 'timmy rules'})
  end

  def username
    @user = params[:username]
    render
  end

  private
  def find_model
    @model = Hello.find(params[:id]) if params[:id]
  end
end
