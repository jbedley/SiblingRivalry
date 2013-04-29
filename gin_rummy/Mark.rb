# For scoring purposes
class Mark
  #   set = 8,8,8
  #   seq = 3,4,5
  attr_accessor :set, :seq, :seqindex, :setindex
  def initialize(set, seq, seqindex, setindex)
    @set, @seq, @seqindex, @setindex = set, seq, seqindex, setindex
  end

  def doubleMarked
    @set and @seq
  end

  def to_s
    "[#{set}:#{setindex} #{seq}:#{seqindex}]"
  end
end
