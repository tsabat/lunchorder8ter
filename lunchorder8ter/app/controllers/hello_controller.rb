class HelloController < ApplicationController
  before_filter :find_model

  def home
    render
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
