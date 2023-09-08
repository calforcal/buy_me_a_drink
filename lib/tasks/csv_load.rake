require 'csv'

namespace :import do
  task :songs => :environment do
    Dir.glob('db/data/songs.csv').each do |file|
      CSV.foreach(file, headers: true) do |row|
        song = Song.new
        song.title = row['title']
        song.album = row['album']
        song.lyrics = row['lyrics']
        song.drink = row['drink']
        song.status = row['status']
        song.save!
      end
    end
  end
end