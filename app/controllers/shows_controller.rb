class ShowsController < ApplicationController
  def show
    @album = Album.find(params[:id])
    @show = Show.find(params[:album_id])
  end

  def index
    @shows = Show.all
  end

  def new
    @album = Album.find(params[:album_id])
    @show = @album.shows.build
  end

  def create
    @album = Album.find(params[:album_id])
    @show = @album.shows.create!(show_params)
    @artist = @album.artist
    redirect_to @album
  end

  def destroy
    @album = Album.find(params[:id])
    @show = @album.shows.find(params[:album_id])
    @show.destroy

    redirect_to artist_album_path(@album)
  end


  private
  def show_params
    params.require(:show).permit(:title, :year, :album_id, :video_url)

  end
end
