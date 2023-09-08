class Youtube
  attr_reader
  attr_reader :title, :youtube_video_id

  def initialize(details)
    @url = if details == nil then nil else "https://www.youtube.com/watch?v=#{details[:id][:videoId]}" end
  end
end