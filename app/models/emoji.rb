class Emoji
  attr_accessor :keys, :priority, :hex
  @@all = []
  def initialize(hex, priority, keys)
    @hex = hex
    @priority = priority
    @keys = keys
    @@all << self
  end


  def self.create_translations(filepath)
    lines = []
    File.open(filepath,'r') do |f|
      lines = f.readlines
    end
    lines.each do |l|
      arr = l.split(",")
      hex = arr[0]
      priority = arr[1]
      keys = []
      for i in 2..arr.length
        keys << arr[i]
      end
      # puts keys
      Emoji.new(hex, priority, keys)

    end

  end


  def self.translate(text)
    arr = text.split(" ")
    # pp arr
    arr.each_with_index do |w,i|
      Emoji.all.each do |e|
          e.keys.each do |k|

            if k == w.downcase
              arr[i] = e.hex
            end
          end
      end
    end
    return arr.join(" ")
  end

  def self.all
    return @@all
  end


end


#puts Emoji.translate(text)
