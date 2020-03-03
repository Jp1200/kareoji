# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Playlist.destroy_all
Artist.destroy_all
MusicVideo.destroy_all
Song.destroy_all

jack = User.create(username: "Jack", password: "bye")

rap = Playlist.create(name: "rap", user_id: jack.id)

kanye = Artist.create(name: "Kanye")
adelle = Artist.create(name: "Adelle")

on_god = Song.create(name: "On God", lyrics: "lyrics hello hello", duration: 300, artist_id: kanye.id)
hello = Song.create(name: "Hello", lyrics: "lyrics hello bye", duration: 300, artist_id: adelle.id)

MusicVideo.create(song_id: on_god.id, playlist_id: rap.id)
MusicVideo.create(song_id: hello.id, playlist_id: rap.id)