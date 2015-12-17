#sums the rows of a file of integers recursively

def sum(array)
  if array.length == 1
    array.first
  else
    sum(array.take(array.length - 1)) + array.last
  end
end

def file_to_array(path)
  array = []
  File.open(path).readlines.each do |line|
    array << line.chomp.to_i
  end
  array
end
