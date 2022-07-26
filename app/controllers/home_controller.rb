class HomeController < ApplicationController

    def index

    end  

    def books
      @book= Book.all
      render json: @book
      #  @author= Author.all
      # render json: @author
    end

    def authors
            @author= Author.all
      render json: @author
    end


    def categories
      @category= Category.all
      render json: @category
    end


  end