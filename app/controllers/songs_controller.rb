require_relative'../models/search.rb'
class SongsController < ApplicationController
  def index
  end

  def new

  end
  def add
    @search = Search.new
    @search.search = params[:search]
    @song = Song.new
    @artist = Artist.new
  end

  def show
    @song = Song.find(params[:id])

  end


  def create
    @artist = Artist.find_or_create_by(name: params[:artist_name])
    @song = Song.create(name: params[:name], artist_id: @artist.id)
    @playlist =  Playlist.find(session[:playlist_id])
    MusicVideo.create(song_id: @song.id, playlist_id: session[:playlist_id])
    redirect_to @playlist
  end

  def destroy
    @song = Song.find(params[:id])
    @musicvideo = MusicVideo.find_by(song_id: @song.id, playlist_id: session[:playlist_id])
    if @musicvideo

    @musicvideo.destroy
    end
    redirect_to playlist_path(session[:playlist_id])
  end





  # def song_params
  #   params.require(:song).permit(:name)
  # end
end
