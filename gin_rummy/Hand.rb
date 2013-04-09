require "./sort_network/Sort10.rb"

class Hand
  def initialize()
    # Going to keep hands always sorted
    @cards = Array.new(10)
  end
  def score
    0
  end
  def sort
    #sort
  end
  def addCard(card)
    # assume hand already sorted
  end
  def to_s
    ret = "["
    @cards.each do |card|
      ret << card.to_s << " "
    end
    ret.chop << "]" # remove (chop) the trailing space
  end
end

h = [rand(100),rand(100),rand(100),rand(100),rand(100),rand(100),rand(100),rand(100),rand(100),rand(100)]
puts h.inspect
Sort10.sort10(h)
puts h.inspect
