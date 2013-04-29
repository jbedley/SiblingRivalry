require "./sort_network/Sort10suit.rb"
require "./sort_network/Sort10value.rb"
require "./Card.rb"
require "./Mark.rb"

class Hand
  def initialize
    # Going to keep hands always sorted
    @cards = Array.new(10)
    for i in 0...@cards.length
      @cards[i] = Card.new(rand(4), rand(13) + 1)
    end
    sort
  end

  # PRECONDITION - hand is sorted!
  def score
    # Setup mark array
    mark = Array.new(10)
    for i in 0...mark.length
      mark[i] = Mark.new(false, false, -1, -1)
    end
    i = 0
    # First pass - mark triples/quads
    while i < @cards.length - 2 # can't find a triple past the third last card
      inARow = 0
      while @cards[i].value == @cards[i + 1].value
        i += 1
        inARow += 1
      end
      if inARow >= 2 # triple
        limit = 2
        if inARow == 3 # quad
          limit = 3
        end
        for j in 0..limit
          mark[i - j].set = true
          mark[i - j].setindex = 2 - j
        end
      end
      i += 1
    end
    puts mark.to_s
    # Second pass - mark sequences
    i = 0

    # Third pass - brute force
  end

  # PRECONDITION - hand is sorted!
  def addCard(card)
    for i in 0...@cards.length
      if card.value < @cards[i].value
        @cards.insert(i, card)
        return
      end
    end
    @cards << card
  end

  def to_s
    ret = "["
    @cards.each do |card|
      ret << card.to_s << " "
    end
    ret.chop << "]" # remove (chop) the trailing space
  end

  def sortSuit
    Sort10suit.sort10(@cards)
  end

  private # <---------
  def sort
    if @cards.length == 10
      Sort10value.sort10(@cards)
    end
  end
end

h = Hand.new
h.sortSuit
puts h.to_s
#puts h.score
