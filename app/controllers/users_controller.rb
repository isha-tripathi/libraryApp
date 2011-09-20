class UsersController < ApplicationController

  def index
     @users=User.find_by_name(params[:user])
     @books=Book.find_by_user_id(@users)

     respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
     end
  end
end
