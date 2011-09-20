class BooksController < ApplicationController

  def index
    @books = Book.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @books }
    end
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.find_by_user_id(params[:user])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  def reserve
    @book= Book.find_by_id(:id)

      if @book.isAvailable?
        flash[:notice] = ' Successfully Reserved, enjoy the book!!'
        @book.user_id=:user.id
        @book.isAvailable=false
      else
        flash[:notice] = 'Sorry the book you requested is not available'
      end

      respond_to do |format|
        format.html { redirect_to(@users)}
        format.xml {head :ok}
      end
  end
end


