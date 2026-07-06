class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def checkout
    book = Book.find(params[:id])
    book.check_out!

    redirect_to books_index_path
  end

  def return_book
    book = Book.find(params[:id])
    book.return!

    redirect_to books_index_path
  end

end