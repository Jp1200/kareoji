require 'nokogiri'
require 'httparty'
require_relative'./search.rb'
class Scraper < Search

  attr_accessor :artist_name, :song_name
  def initialize(artist_name,song_name)
    @artist_name = artist_name.downcase.gsub(",","").gsub(" ","")
    @song_name = song_name.downcase.gsub(",","").gsub(" ","")
  end

  # puts "Artist name: (no symbols)"
  # @artist_name = gets.chomp.downcase.gsub(" ","")
  # puts "Song name:"
  # @song_name = gets.chomp.downcase
 def get_lyrics


    url = "https://www.azlyrics.com/lyrics/#{self.artist_name}/#{self.song_name}.html"
    web_page = HTTParty.get(url)
pp url
    @parsed = Nokogiri::HTML(web_page)
    if @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").children[14].nil?
      puts "#{url}"

      puts "Wrong artist name or song name (ref above)"
    else
      lyrics = @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").children[14].text


    end
    return lyrics.to_s
  end

end
