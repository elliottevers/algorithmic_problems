require 'pry'
#return all the permutations of an array
def permutations(array)
  results = []
  results[0] = [[array.first]]
  (1..array.length - 1).each do |i|
    new_perms = []
    old_perms = results[i-1].deep_dup
    old_perms.each do |perm|
      perm.each_with_index do |value, index|
        new_perms << perm.splice(index, i + 1)
      end
      new_perms << perm.push(i + 1)
    end
    results[i] = new_perms
  end
  results[array.length - 1]
end

class Array
  def deep_dup
    map {|x| x.deep_dup}
  end
  def splice(index, value)
    first_half = self.take(index)
    second_half = self.drop(index)
    first_half + [value] + second_half
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
