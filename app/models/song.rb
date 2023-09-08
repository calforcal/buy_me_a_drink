class Song < ApplicationRecord
  validates_presence_of :title, :album, :lyrics, :drink, :status
end