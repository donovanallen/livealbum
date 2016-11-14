class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    # photo = @artists.find(artist).photo_url
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)
    redirect_to artists_path
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_url
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :nationality, :genre, :photo_url)

  end
end
