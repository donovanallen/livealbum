class ShowlistsController < ApplicationController

  def index
    @showlists = current_user.showlists
  end

  def show
    @showlist = current_user.showlists.find(params[:id])
  end

  def new
    @user = current_user
    @showlist = @user.showlists.build
  end

  def create
    @user = current_user
    @showlist = @user.showlists.create!(showlist_params)
    @showlist.show_id = nil
    redirect_to showlists_path
  end

  private
  def showlist_params
    params.require(:showlist).permit(:name)

  end

end
