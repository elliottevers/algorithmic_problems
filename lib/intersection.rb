#returns the intersection of two sets (represented as arrays in this case)

def intersection(arr1, arr2)
  result = []
  set = Hash.new
  arr1.each do |value|
    set[value] = true
  end
  arr2.each do |value|
    if set[value]
      result << value
    end
  end
  result
end
