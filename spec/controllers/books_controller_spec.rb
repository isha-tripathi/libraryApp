require File.dirname(__FILE__) + '/../spec_helper.rb'

describe BooksController, "listing all books" do
  integrate_views
  fixtures :books

  it "should  show all books available"  do
    Book.any_instance.stubs(:valid?).returns(true)
    post 'index'
    response.should redirect_to(books_path)
  end

  it "should confirm reservation of a book" do
    Book.any_instance.stubs(:valid?).returns(true)
    post 'show'
    response.should redirect_to(users_path)
  end
end