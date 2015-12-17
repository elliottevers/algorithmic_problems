#given a top left index and a bottom right index, sums the resultant submatrix

def mrs(matrix, top_left, bottom_right)
  total = 0
  submatrix(matrix, top_left, bottom_right).each do |row|
    total += row.inject(:+)
  end
  total
end

def submatrix(matrix, top_left, bottom_right)
  matrix = matrix[top_left[0]..bottom_right[0]]
  matrix.map! do |row|
    row[top_left[1]..bottom_right[1]]
  end
  matrix
end
