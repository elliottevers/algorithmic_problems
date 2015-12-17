require 'pry'

#return all the subsets of an array

def all_subsets(array)
  results = Array.new(array.length - 1)
  results[0] = [[array.first], []]

  (1..array.length - 1).each do |i|

    old_half = results[i-1]
    new_half = []
    temp = results[i-1].deep_dup

    temp.each do |subs|
      new_half << (subs << array[i])
    end
    
    results[i] = old_half + new_half
  end

  results[array.length - 1]
end

class Array
  def deep_dup
    map {|x| x.deep_dup}
  end
end

class Object
  def deep_dup
    dup
  end
end

class Numeric
  def deep_dup
    self
  end
end
