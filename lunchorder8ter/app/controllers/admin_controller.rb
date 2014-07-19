class AdminController < ApplicationController
  def index
    render
  end

  def email
    @employees = User.all
    render
  end

end
