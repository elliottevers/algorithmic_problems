#edge cases are a problem here

def sorted_median(arr1, arr2)
  length1, length2 = arr1.length, arr2.length
  median_count = 0
  left_index, right_index = 0, 0
  until median_count == (length1 + length2)/2
    if arr1[arr1.length/2] >= arr2[arr2.length/2]
      right_index += arr2.length/2
      median_count += arr2.length/2
      arr2 = arr2.drop[arr2.length/2]
    end
    if arr2.first > arr1[arr1.length/2]
      left_index += arr1.length/2
      median_count += arr1.length/2
      arr1 = arr1.drop[arr1.length/2]
    end
  end
  [right_index, left_index]
end
