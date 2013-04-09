require "./Card.rb"

class Deck
  def initialize()
    @cards = Array.new(52)
    card_index = 0;
    for suit in 0..3
      for value in 1..13
        @cards[card_index] = Card.new(suit, value)
        card_index = card_index + 1
      end
    end
  end

  # Makes a string of the whole deck
  def to_s
    ret = "["
    @cards.each do |card|
      ret << card.to_s << " "
    end
    ret.chop << "]" # remove (chop) the trailing space
  end

  def shuffle
    for i in 0..1000 # swap two random cards a lot of times
      k = rand(@cards.length)
      j = rand(@cards.length)
      tempcard = @cards[k];
      @cards[k] = @cards[j];
      @cards[j] = tempcard;
    end
  end
end

x = Deck.new()
x.shuffle
puts x.to_s
