require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Search
  attr_accessor :url_s, :search
  # validates :search, presence: true
  def initialize
    @url_s = 'https://deezerdevs-deezer.p.rapidapi.com/search?q='

  end

  def search_meth
    # puts "type search:"
    # search = gets.chomp
    uri = URI.parse(self.url_s + self.search)


    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri)
    request["x-rapidapi-host"] = 'deezerdevs-deezer.p.rapidapi.com'
    request["x-rapidapi-key"] = '5205c32fa5mshca9ad07b3dd74ccp18bbedjsnb96ddfde337e'

     response = http.request(request)
     if JSON.parse(response.body).empty?
       return []
     else
       return JSON.parse(response.body).dig("data")[0..4]
     end
  end
  def results
    searchables = self.search_meth

    results = []
    searchables.each do |i|
      results << {i["artist"]["name"] => i["title"],i["album"]["title"] => i["album"]["cover"]}
      # results has key => value pairs for each index:
      # artist name => song title & album name => album cover url


    end
     return results
  end
end
