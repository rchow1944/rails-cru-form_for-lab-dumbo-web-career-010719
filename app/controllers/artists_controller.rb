class ArtistsController < ApplicationController
  def new
    #code
    @artist = Artist.new
  end

  def create
    #code
    @artist = Artist.create(params.require(:artist).permit(:name))
    redirect_to artist_path(@artist)
  end

  def edit
    #code
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name))
    redirect_to artist_path(@artist)
  end

  def show
    #code
    @artist = Artist.find(params[:id])
  end
end
