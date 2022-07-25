module Api 
    module V1

  class AuthorsController < ApplicationController
    # before_action :authorize_access_reqques!
    before_action :set_artist, only: %i[ show update destroy ]

    # GET /artists
    def index
      @authors = Author.all
        
      render json: @authors
    end

    # GET /artists/1
    def show
      render json: @authors
    end

    # POST /artists
    def create
      @authors = Author.new(author_params)

      if @authors.save
        render json: @authors, status: :created, location: @authors
      else
        render json: @authors.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /artists/1
    def update
      if @authors.update(author_params)
        render json: @authors
      else
        render json: @authors.errors, status: :unprocessable_entity
      end
    end

    # DELETE /artists/1
    def destroy
      @authors.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_artist
        @authors = Author.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def author_params
        
    params.require(:book).permit(:name)

      end
  end
end
end  

