module Api 
    module V1

  class  CategoriesController < ApplicationController
    # before_action :authorize_access_reqques!
    before_action :set_artist, only: %i[ show update destroy ]

    # GET /artists
    def index
      @categories = Category.all

      render json: @categories
    end

    # GET /artists/1
    def show
      render json: @categories
    end

    # POST /artists
    def create
      @categories = Category.new(categories_params)

      if @books.save
        render json: @categories, status: :created, location: @categories
      else
        render json: @categories.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /artists/1
    def update
      if @books.update(categories_params)
        render json: @categories
      else
        render json: @categories.errors, status: :unprocessable_entity
      end
    end

    # DELETE /artists/1
    def destroy
      @categories.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_artist
        @categories = Category.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def categories_params
        
    params.require(:book).permit(:name)

      end
  end
end
end  

