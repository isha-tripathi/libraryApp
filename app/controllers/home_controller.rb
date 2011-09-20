class HomeController < ApplicationController

  def index
    @users = User.find_or_create_by_name(params[:user])
  end

end
