class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  
  def show
    @album = Album.find(params[:id])
    @tracks = @album.tracks
  end
  
  private
  def album_params
    params.require(:album).permit(:cover, :title, :artist)
  end
end
