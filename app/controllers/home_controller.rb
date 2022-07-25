class HomeController < ApplicationController

    def index
      @book= Book.all
      render json: @book
    end
  end