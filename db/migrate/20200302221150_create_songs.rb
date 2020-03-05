class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.text :lyrics
      t.string :url_album
      t.integer :artist_id
      t.timestamps
    end
  end
end
