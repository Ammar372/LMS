class AuthorsController < ApplicationController
  def index
    @author=Author.all
  end

  def show
    @author =Author.find(params[:id])

  end

  def new
    @author = Author.new

  end


  def create
    @author = Author.new(authors_params)
    if @author.save
      redirect_to(authors_path)
    elsif
    render("error1") 
    end

  end

  def edit
    @author =Author.find(params[:id])
 

  end

  def update
    @author =Author.find(params[:id])
     
    if @author.update(authors_params)
      redirect_to(authors_path)
    elsif
    render("error1") 
    end
  end

  def delete
    @author =Author.find(params[:id])

  end

  def destroy
    @author =Author.find(params[:id])

    if @author.destroy
      # @book.destroy
      redirect_to(authors_path)
    elsif
    render("error1") 
    end
  end

  def Error1 
    render("error1",)
  end

  private
  def authors_params
    params.require(:author).permit(:name)
  end
end
