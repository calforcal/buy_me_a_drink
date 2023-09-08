class YoutubeFacade
  def taylor_swift_video(search)
    video_details = youtube_service.get_video(search)
    video = Youtube.new(video_details[:items].first)
  end

  def youtube_service
    YoutubeService.new
  end
end