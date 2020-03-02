class CreateMusicVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :music_videos do |t|
      t.integer :song_id
      t.integer :playlist_id
      t.string :url
      t.timestamps
    end
  end
end
