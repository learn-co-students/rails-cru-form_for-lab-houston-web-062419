class SongsController < ApplicationController

   def index
      @songs = Song.all
   end

   def new
    @song = Song.new
   #  byebug
   #  @song.artist = Artist.all
   #  @song.genre = Genre.all
   #  @song.save
   end
    
   def show
    @song = Song.find(params[:id])
#    byebug
   end

   def create
    @song = Song.create
    @song.name = params[:song][:name]
    @song.artist_id = params[:song][:artist_id]
    @song.genre_id = params[:song][:genre_id]
    @song.save
   #  byebug

    redirect_to song_path(@song)
    # byebug
   end

   def edit
      @song = Song.find(params[:id])
      # byebug
   end

   def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
   end
end
