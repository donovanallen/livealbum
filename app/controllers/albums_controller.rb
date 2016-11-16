class AlbumsController < ApplicationController
  def index
    @albums = Album.all.order('name')
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
    @album = @artist.albums.new(album_params)
    if @album.save
      flash[:notice] = "Album was created!"
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if current_user
      @album.update(album_params)
      redirect_to artist_album_path(@album), notice: "Album was updated!"
    else
      redirect_to artist_album_path(@album), alert: "You must be signed in to edit this album."
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @artist = @album.artist
    if current_user
      @album.destroy
      redirect_to @artist, notice: "Album was deleted!"
    else
      redirect_to @artist, alert: "You must be signed in to delete this album."
    end
  end


  private
  def album_params
    params.require(:album).permit(:title, :year, :artist_id, :photo_url)

  end
end
