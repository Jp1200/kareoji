class Playlist < ApplicationRecord

  belongs_to :user
  has_many :music_videos, dependent: :destroy
  has_many :songs, through: :music_videos
end
