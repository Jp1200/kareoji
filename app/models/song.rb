class Song < ApplicationRecord
  belongs_to :artist
  has_many :music_videos
  has_many :playlists, through: :music_videos
end
