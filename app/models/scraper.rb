require 'nokogiri'
require 'httparty'

class Scraper

  web_page = HTTParty.get("https://www.azlyrics.com/lyrics/fatnick/pemex.html")

  @parsed = Nokogiri::HTML(web_page)

  lyrics = @parsed.css("div.main-page").css("div.col-xs-12.col-lg-8.text-center").children[14].text
  
  # body > div.container.main-page > div > div.col-xs-12.col-lg-8.text-center > div:nth-child(8)



  # lyics = @parsed.css
  # get_attribute("content")
end
# attributes = [
#                #(Attr:0x3fea8adbf920 {
#                  name = "name",
#                  value = "description"
#                  }),
#                #(Attr:0x3fea8adbf5ec {
#                  name = "content",
#                  value = "Tool \"Lateralus\": Black then white are all I see In my infancy. Red and yellow then came to be, Reaching out to me, Le..."
#                  })]
