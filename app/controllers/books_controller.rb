class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    b = Book.new
    b.title = params[:title]
    b.author = params[:author]
    b.currently_out = false
    b.save!
    redirect_to :back
  end

  def update
    b = Book.find(params[:book_id])
    b.currently_out = false
    b.save!
    redirect_to :back
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to :back
  end
end
