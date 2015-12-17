require 'set'

#returns whether two elements in an array sum to a target value

def pair_sum(array, target)
  hash = Hash.new
  array.each do |num|
    hash[num] = true
  end
  results = Set.new
  array.each do |num|
    if hash[target - num]
      results.add([num, target - num].sort)
    end
  end
  results
end
