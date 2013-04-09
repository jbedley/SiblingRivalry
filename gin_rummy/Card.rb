class Card
  #http://stackoverflow.com/questions/5560914/how-do-i-escape-a-unicode-string-with-ruby
  @@suit_to_string = ["\u2660","\u2665","\u2666","\u2663"]
  @@value_to_string = [nil,"A","2","3","4","5","6","7","8","9","T","J","Q","K"]

  attr_reader :suit, :value
  def initialize(suit, value)
    @suit     = suit
    @value   = value
  end
  def to_s
    "[#{@@value_to_string[@value]} #{@@suit_to_string[@suit]}]"
  end
end
