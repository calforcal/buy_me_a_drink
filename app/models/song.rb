class Song < ApplicationRecord
  validates_presence_of :title, :album, :lyrics, :drink, :status

  def self.find_song(status)
    Song.where(status: status.to_i).sample
  end
end