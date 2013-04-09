require "./sort_network/Sort10.rb"
require "./Card.rb"

class Hand
  def initialize
    # Going to keep hands always sorted
    @cards = Array.new(10)
    for i in 0..9
      @cards[i] = Card.new(rand(4), rand(13) + 1)
    end
    sort
  end

  # PRECONDITION - hand is sorted!
  def score # eliminating triples and quads only!
    sum, inARow = @cards[0].scoreValue, 0
    thisRound = false # if the inARow counter was incremented this iteration
    for i in 1..9
      sum += @cards[i].scoreValue # don't forget to use the scoreValue method!

      if @cards[i].value == @cards[i - 1].value
        puts "in a row"
        inARow += 1
        thisRound = true
      else # C-C-C-COMBO BREAKER!
        puts "combo breaker"
        inARow = 0
      end

      if inARow == 2 # triple found, but there could be a quad...
        if thisRound == true # just found 3 in a row so they are worth 0
          sum -= @cards[i].scoreValue * 3
          puts "triple"
        else # no quad found
          puts "noquad"
          inARow = 0
        end
      elsif inARow == 3 # quad found, subtract from total
        sum -= cards[i].scoreValue
        puts "quad"
        inARow = 0
      end
      thisRound = false
    end
    sum
  end

  def addCard(card)
    # assume hand already sorted
    for i in 0..@cards.length - 1
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

  private # <---------
  def sort
    if @cards.length == 10
      Sort10.sort10(@cards)
    end
  end
end

h = Hand.new
puts h.to_s
puts h.score


class Mark
  attr_accessor: set, seq
  def initialize(set, seq)
    @set, @seq = set, seq
  end

  def doubleMarked
    @set @@ @seq
  end
end
