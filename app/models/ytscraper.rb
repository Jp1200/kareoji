require 'nokogiri'
require 'httparty'
class YtScraper

  attr_accessor :artist_name, :song_name
  def initialize(artist_name,song_name)
    @artist_name = artist_name.downcase
    @song_name = song_name.downcase
  end

  # puts "Artist name: (no symbols)"
  # @artist_name = gets.chomp.downcase.gsub(" ","")
  # puts "Song name:"
  # @song_name = gets.chomp.downcase
 def get_id
    url = "https://www.youtube.com/results?search_query=#{@artist_name.gsub(" ","+")}+#{@song_name.gsub(" ","+")}"
#pp url
    web_page = HTTParty.get(url)

  @parsed = Nokogiri::HTML(web_page)
  ref =  @parsed.css("a").collect{|link| link["href"]}.select{|href| href.include?("/watch?v=")}.uniq[0]
  return ref.gsub("/watch?v=", "")
  end

end


test = YtScraper.new("tyler the creator", "earfquake")
pp test.get_id
