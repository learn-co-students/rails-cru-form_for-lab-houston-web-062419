class ArtistsController < ApplicationController
  before_action :current_artist, only: [:show, :edit, :update]
  def index
    @artists = Artist.all
  end
  def show
  end
  def new
    # byebug
    @artist = Artist.new 
  end
  def create
    @artist = Artist.create(artists_params)
    redirect_to @artist
  end
  def edit
  end
  def update
    @artist.update(artists_params)
    redirect_to @artist
  end
  private
  def artists_params
    params.require(:artist).permit(:name, :bio)
  end
  def current_artist
    # byebug
    @artist = Artist.find(params[:id])
  end
end
