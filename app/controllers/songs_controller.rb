class SongsController < ApplicationController
  def index
  end

  def new 
    @song = Song.new
  end 

  def show
    @song = Song.find(params[:id])
  end


  def create
    @song = Song.create(name: song_params[:name], lyrics: "lyrics hello bye", duration: 300, artist_id: 1)
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



  private 

  def song_params
    params.require(:song).permit(:name)
  end 
end
