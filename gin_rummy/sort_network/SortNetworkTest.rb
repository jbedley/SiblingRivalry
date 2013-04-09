require "./sort10"
 
arr = Array.new(10)
 
arr.each_index {|i| arr[i] = i}
 
def isSorted(a)
  for i in 1..a.size - 1
    if a[i] < a[i-1]
      return false
    end
  end
  return true
end
 
perm = arr.permutation.to_a
 
t1 = Time.now
 
perm.each{ |p| 
  sort10(p)
  puts p unless isSorted(p) 
}
 
t2 = Time.now
 
puts t2 - t1
