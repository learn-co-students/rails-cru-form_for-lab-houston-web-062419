class SongsController < ApplicationController

	before_action :get_song, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@songs = Song.all
	end

	def new
		@song = Song.new
	end

	def create

		@song = Song.create(ok_params)
		redirect_to song_path(@song)
	end

	def edit
	end

	def update
		@song = Song.update(ok_params)
		redirect_to song_path(@song)
	end

	private

	def ok_params
		params.require(:song).permit(:name, :artist_id, :genre_id)

	end

	def get_song
		@song = Song.find(params[:id])
	end

end
