class SongsController < ApplicationController
  def show
    @song = Song.find_song(params[:status])
    @video = YoutubeFacade.new.taylor_swift_video(@song.title)
  end
end