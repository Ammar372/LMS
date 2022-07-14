class CategoriesController < ApplicationController
  def index
    @category=Category.all
  end

  def show
    @category =Category.find(params[:id])

  end

  def new
    @category = Category.new

  end


  def create
    @category = Category.new(categories_params)
    if @category.save
      redirect_to(categories_path)
    elsif
    render("error1") 
    end

  end

  def edit
    @category =Category.find(params[:id])
 

  end

  def update
    @category =Category.find(params[:id])
     
    if @category.update(categories_params)
      redirect_to(categories_path)
    elsif
    render("error1") 
    end
  end

  def delete
    @category =Category.find(params[:id])

  end

  def destroy
    @category =Category.find(params[:id])

    if @category.destroy
      # @book.destroy
      redirect_to(categories_path)
    elsif
    render("error1") 
    end
  end

  def Error1 
    render("error1",)
  end

  private
  def categories_params
    params.require(:category).permit(:name)
  end
end
