class BooksController < ApplicationController
before_action :set_book ,only: [:show,:edit, :update,:delete, :destroy]


  def index
    # @author = Author.find(params[:author])
    @book=Book.all
  end

  def show
    # @book =Book.find(params[:id])

  end

  def new
    @book = Book.new

  end


  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to(books_path)
    elsif
    render("error1") 
    end

  end

  def edit
    # @book =Book.find(params[:id])
 

  end

  def update
    # @book =Book.find(params[:id])
     
    if @book.update(books_params)
      redirect_to(books_path)
    elsif
    render("error1") 
    end
  end

  def delete
    # @book =Book.find(params[:id])

  end

  def destroy
    # @book =Book.find(params[:id])

    if @book.destroy
      # @book.destroy
      redirect_to(books_path)
    elsif
    render("error1") 
    end
  end

  def Error1 
    render("error1",)
  end

  private

  def set_book
    @author = Author.find(params[:author])

    @book =Book.find(params[:id])

  end
  
  def books_params
    params.require(:book).permit(:name)
  end
end
