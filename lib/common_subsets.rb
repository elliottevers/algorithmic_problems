require_relative 'all_subsets'

def common_subsets(arr1, arr2)
  all_subsets(intersection(arr1, arr2))
end

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
