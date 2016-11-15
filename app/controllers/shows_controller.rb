class ShowsController < ApplicationController

  def show
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

  def edit
    @album = Album.find(params[:id])
    @show = @album.shows.find(params[:album_id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)

    redirect_to album_show_path(@show)
  end

  def destroy
    @album = Album.find(params[:id])
    @show = @album.shows.find(params[:album_id])
    @show.destroy

    redirect_to artist_album_path(@album)
  end

  def add_to_showlist
    @show = Show.find(params[:id])
    @show.showlists.create(user: current_user)
    redirect_to :back
  end

  def delete_from_showlist
    Showlist.where(user: current_user).destroy_all
    redirect_to :back
  end


  private
  def show_params
    params.require(:show).permit(:title, :year, :album_id, :video_url)

  end
end
