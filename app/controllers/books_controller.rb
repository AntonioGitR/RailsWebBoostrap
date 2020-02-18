class BooksController < ApplicationController
   PER_PAGE = 10

  def index
    page_number = params[:page] ? params[:page].to_i : 1
    book_offset = PER_PAGE * (page_number - 1)
    @books      = Book.limit(PER_PAGE).offset(book_offset)
    @next_page  = page_number + 1 if @books.count == PER_PAGE
  end
end
