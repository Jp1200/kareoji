class PlaylistsController < ApplicationController
  def index
  end

  def show
    @user = User.find(session[:user_id])
    @playlist = Playlist.find(params[:id])
    session[:playlist_id] = @playlist.id
  end

  def new 
    @user = User.find(session[:user_id])
    @playlist = Playlist.new
  end 

  def create
    @playlist = Playlist.create(playlist_params)
    @playlist.user_id = session[:user_id]
   @playlist.save
    redirect_to playlist_path(@playlist)
  end

  def update
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    @user = User.find(session[:user_id])
    redirect_to @user
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end 
end
