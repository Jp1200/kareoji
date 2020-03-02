class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.text :lyrics
      t.integer :duration
      t.integer :artist_id
      t.timestamps
    end
  end
end
