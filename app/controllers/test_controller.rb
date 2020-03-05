class TestController < ApplicationController
  def test
    @text = "Scroll \n Scroll \n Scroll \n Scroll \n Scroll \n Scroll \n Scroll \n Scroll \n"
    render "test"
  end

  def emoji_test
    text = "I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees I love my heart \n chickens are the bomb \n hot like the sun \n santa isn't sleeping <br/> i got the trees"
    Emoji.create_translations("/Users/jacqueso/Development/project2/kareoji/app/assets/stylesheets/emojihex.rtf")
    @text = Emoji.translate(text)
    render "test"
  end
end
