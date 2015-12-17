#returns, given an array, the largest sum of a subarray

class Array
  def drop_last
    self.take[0..self.length - 2]
  end
end

def lcs(array)
  results = []
  (0..array.length - 1).each do |i|
    if i == 0
      results[i] = array.first
    else
      results[i] = [results[i - 1], largest_suffix_sum(array[0,i])].max
    end
  end
  results[array.length - 1]
end

def largest_suffix_sum(array)
  sum = 0
  (array.length - 1).downto(0).each do |i|
    if sum + array[i] >= sum
      sum += array[i]
    else
      break
    end
  end
  sum
end
