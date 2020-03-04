require 'nokogiri'
require 'httparty'
require_relative'./search.rb'
class Scraper < Search

  attr_accessor :artist_name, :song_name
  def initalize(artist_name,song_name)
    @artist_name = artist_name.downcase.gsub(" ","")
    @song_name = song_name.downcase
  end

  # puts "Artist name: (no symbols)"
  # @artist_name = gets.chomp.downcase.gsub(" ","")
  # puts "Song name:"
  # @song_name = gets.chomp.downcase
 def get_lyrics
    results = self.results
    # ^ gives first five results based on search
    url = "https://www.azlyrics.com/lyrics/#{@artist_name}/#{@song_name}.html"
    web_page = HTTParty.get(url)

    @parsed = Nokogiri::HTML(web_page)
    if @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").children[14].nil?
      puts "#{url}"

      puts "Wrong artist name or song name (ref above)"
    else
      lyrics = @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").children[14].text
      pp lyrics

    end
  end

end
