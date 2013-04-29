class String
  # colorization
  def colourize(colour_code)
    "\e[#{colour_code}m#{self}\e[0m"
  end

  def red
    colourize(31)
  end
  def blue
    colourize(34)
  end
  def black
    colourize(30)
  end
end
class Card
  #http://stackoverflow.com/questions/5560914/how-do-i-escape-a-unicode-string-with-ruby
  @@suit_to_string = ["\u2660".blue,"\u2665".red,"\u2666".red,"\u2663".blue]
  @@value_to_string = [nil,"A","2","3","4","5","6","7","8","9","T","J","Q","K"]

  attr_reader :suit, :value
  def initialize(suit, value)
    @suit     = suit
    @value   = value
  end
  def scoreValue
    @value > 10 ? 10 : @value
  end
  def to_s
    "[#{@@value_to_string[@value]} #{@@suit_to_string[@suit]}]"
  end
end
