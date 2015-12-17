#the algorithm explains it better than I can

def digital_sum(num)
  if num < 10
    num
  else
    digital_sum(sum_digits(num))
  end
end

def sum_digits(num)
  num.to_s.split("").map(&:to_i).reduce(:+)
end
