class BooksController < ApplicationController

  def index
    @books = Book.find_by_sql("SELECT * FROM books WHERE isAvailable=0")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @books }
    end
  end

  def show
    @book = Book.find(params[:id])
    @reserved = Book.find_by_sql("UPDATE books SET isAvailable=1 where id=#{params[:id]}")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  #def reserve
  #
  #  if @book.isAvailable?
  #    flash[:notice] = 'Successfully Reserved, enjoy the book!!'
  #    @book.user_id=@user.id
  #    @book.isAvailable=false
  #    else
  #      flash[:notice] = 'Sorry the book you requested is not available'
  #  end
  #
  #  respond_to do |format|
  #    format.html { redirect_to(@user)}
  #    format.xml {head :ok}
  #  end
  #end
end


