class GenresController < ApplicationController

	before_action :get_genre, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@genres = Genre.all
	end

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.create(ok_params)
		redirect_to genre_path(@genre)
	end

	def edit
	end

	def update
		@genre = Genre.update(ok_params)
		redirect_to genre_path(@genre)
	end

	private

	def ok_params
		params.require(:genre).permit(:name)
	end

	def get_genre
		@genre = Genre.find(params[:id])
	end

end
