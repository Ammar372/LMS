module Api 
    module V1

  class BooksController < ApplicationController
    # before_action :authorize_access_reqques!
    skip_before_action :verify_authenticity_token
    before_action :set_artist, only: %i[ show update destroy ]

    # GET /artists
    def index
      @books = Book.all

      render json: @books
    end

    # GET /artists/1
    def show
      render json: @books
    end

    # POST /artists
    def create
      @books = Book.new(book_params)

      if @books.save
        
        render json: @books , status: :created, location: @books
      else
        render json: @books.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /artists/1
    def update
      if @books.update(book_params)
        render json: @books
      else
        render json: @books.errors, status: :unprocessable_entity
      end
    end

    # DELETE /artists/1
    def destroy
      @books.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_artist
        @books = Book.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def book_params
        
    params.require(:book).permit(:name,:pages)

      end
  end
end
end  

