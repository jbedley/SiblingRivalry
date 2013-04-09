# Sorts an array of exactly 10 elements in place
# GenerateSortNetwork.rb  2013-04-08T21:45:46-04:00
module Sort10
  def Sort10.sort10 (a)
    raise "array is the wrong length" unless a.length == 10
    if a[4] > a[9]
      a[4], a[9] = a[9], a[4]
    end
    if a[3] > a[8]
      a[3], a[8] = a[8], a[3]
    end
    if a[2] > a[7]
      a[2], a[7] = a[7], a[2]
    end
    if a[1] > a[6]
      a[1], a[6] = a[6], a[1]
    end
    if a[0] > a[5]
      a[0], a[5] = a[5], a[0]
    end
    if a[1] > a[4]
      a[1], a[4] = a[4], a[1]
    end
    if a[6] > a[9]
      a[6], a[9] = a[9], a[6]
    end
    if a[0] > a[3]
      a[0], a[3] = a[3], a[0]
    end
    if a[5] > a[8]
      a[5], a[8] = a[8], a[5]
    end
    if a[0] > a[2]
      a[0], a[2] = a[2], a[0]
    end
    if a[3] > a[6]
      a[3], a[6] = a[6], a[3]
    end
    if a[7] > a[9]
      a[7], a[9] = a[9], a[7]
    end
    if a[0] > a[1]
      a[0], a[1] = a[1], a[0]
    end
    if a[2] > a[4]
      a[2], a[4] = a[4], a[2]
    end
    if a[5] > a[7]
      a[5], a[7] = a[7], a[5]
    end
    if a[8] > a[9]
      a[8], a[9] = a[9], a[8]
    end
    if a[1] > a[2]
      a[1], a[2] = a[2], a[1]
    end
    if a[4] > a[6]
      a[4], a[6] = a[6], a[4]
    end
    if a[7] > a[8]
      a[7], a[8] = a[8], a[7]
    end
    if a[3] > a[5]
      a[3], a[5] = a[5], a[3]
    end
    if a[2] > a[5]
      a[2], a[5] = a[5], a[2]
    end
    if a[6] > a[8]
      a[6], a[8] = a[8], a[6]
    end
    if a[1] > a[3]
      a[1], a[3] = a[3], a[1]
    end
    if a[4] > a[7]
      a[4], a[7] = a[7], a[4]
    end
    if a[2] > a[3]
      a[2], a[3] = a[3], a[2]
    end
    if a[6] > a[7]
      a[6], a[7] = a[7], a[6]
    end
    if a[3] > a[4]
      a[3], a[4] = a[4], a[3]
    end
    if a[5] > a[6]
      a[5], a[6] = a[6], a[5]
    end
    if a[4] > a[5]
      a[4], a[5] = a[5], a[4]
    end
  end
end