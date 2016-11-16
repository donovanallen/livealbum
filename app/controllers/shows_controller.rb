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
    @artist = @album.artist
    @show = @album.shows.new(show_params)
    if @show.save
      flash[:notice] = "Show was added!"
      redirect_to @album
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    @show = @album.shows.find(params[:album_id])
  end

  def update
    @show = Show.find(params[:id])
    if current_user
      @show.update(show_params)
      redirect_to album_show_path(@show), notice: "Song was updated!"
    else
      redirect_to album_show_path(@show), alert: "You must be signed in to edit this show."
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @show = @album.shows.find(params[:album_id])
    if current_user
      @show.destroy
      redirect_to artist_album_path(@album), notice: "Song was deleted!"
    else
      redirect_to artist_album_path(@album), alert: "You must be signed in to delete this show."
    end
  end


  private
  def show_params
    params.require(:show).permit(:title, :year, :album_id, :video_url)

  end
end
