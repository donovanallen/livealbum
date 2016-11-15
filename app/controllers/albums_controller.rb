class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.build
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.create!(album_params)
    redirect_to @artist
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_params)

    redirect_to artist_album_path(@album)
  end

  def destroy

    @album = Album.find(params[:id])
    @artist = @album.artist
    @album.destroy

    redirect_to @artist
  end


  private
  def album_params
    params.require(:album).permit(:title, :year, :artist_id, :photo_url)

  end
end
