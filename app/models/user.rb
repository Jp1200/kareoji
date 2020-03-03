class User < ApplicationRecord
  has_many :playlists
  has_many :music_videos, through: :playlists 

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, length: {minimum: 3}
end
