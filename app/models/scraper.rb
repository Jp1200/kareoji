require 'nokogiri'
require 'httparty'
require 'pry'
class Scraper

  attr_accessor :artist_name, :song_name
  def initialize(artist_name,song_name)
    @artist_name = artist_name.downcase.gsub(/[^0-9A-Za-z]/, '')
    @song_name = song_name.downcase.gsub(/[^0-9A-Za-z]/, '')
  end


  # puts "Artist name: (no symbols)"
  # @artist_name = gets.chomp.downcase.gsub(" ","")
  # puts "Song name:"
  # @song_name = gets.chomp.downcase
 def get_lyrics


    url = "https://www.azlyrics.com/lyrics/#{self.artist_name}/#{self.song_name}.html"
    web_page = HTTParty.get(url)
    pp self.song_name
pp url
    @parsed = Nokogiri::HTML(web_page)
    if @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").children[14].nil?
      puts "#{url}"

      puts "Wrong artist name or song name (ref above)"
    else
      lyrics = @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").css("div").collect do |e|
         if e["class"]  == nil
           e.text
         end
       end
      # .children[14]

    end
    if lyrics.nil?
      lyrics = 0
    else
      lyrics.delete_if { |e| e == nil  }[0]
    end
  end

end
