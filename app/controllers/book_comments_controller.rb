class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    book_comment = current_user.book_comments.new(book_comment_params)
    book_comment.book_id = book.id
    book_comment.save
    redirect_back(fallback_location: books_path)
  end
  def destroy
    
  end
end
