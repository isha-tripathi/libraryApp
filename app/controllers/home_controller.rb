class HomeController < ApplicationController

  def index
    @user = User.find_or_create_by_name(params[:user])
  end

end
