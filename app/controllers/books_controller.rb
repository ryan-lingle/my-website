class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show ]
  def index
    @books = Book.all.sort_by { |b| -b.rating }
  end

  def show
    @book = Book.find(params[:id])
  end

  def dash
    @book = Book.new
    @books = Book.all
    render layout: "admin"
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to admin_books_path
    else
      @book = Book.all
      render 'dash', layout: 'admin'
    end
  end

  def edit
    @book = Book.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to admin_books_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to admin_books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :content, :rating, :cover, :note_pic, :amazon_link)
  end
end
