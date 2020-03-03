class User < ApplicationRecord
  has_many :playlists
  has_many :music_videos, through: :playlists 
end
