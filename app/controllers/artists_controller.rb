class ArtistsController < ApplicationController

	before_action :get_artist, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@artists = Artist.all
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.create(ok_params)
		redirect_to artist_path(@artist)
	end

	def edit
	end

	def update
		@artist = Artist.update(ok_params)
		redirect_to artist_path(@artist)
	end

	private

	def ok_params
		params.require(:artist).permit(:name, :bio)
	end

	def get_artist
		@artist = Artist.find(params[:id])
	end

end
