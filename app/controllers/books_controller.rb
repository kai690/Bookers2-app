class BooksController < ApplicationController

  def create
    @Book = Book.new(book_params)
    @Book.user_id = current_user.id
    @Book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
    @book = Book
  end

  def show
  end
  
  def update
  end
  
  def update
  end

  def destroy
  end
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
