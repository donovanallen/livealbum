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
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "Artist was created!"
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    redirect_to artist_path(@artist), notice: "Artist was updated!"
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_url, notice: "Artist was deleted!"
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :nationality, :genre, :photo_url)

  end
end
