class Playlist < ApplicationRecord
  belongs_to :user
  has_many :music_videos
  has_many :songs, through: :music_videos
end
