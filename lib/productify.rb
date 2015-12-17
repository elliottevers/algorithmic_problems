require 'pry'
# for a given array, return an array which at every index is the product of all the other entries in the array
def productify(array)
  products = Array.new(array.length, 1)

  lower_product = 1
  0.upto(array.length - 1) do |i|
    products[i] = products[i] * lower_product
    lower_product = lower_product * array[i]
  end

  upper_product = 1
  (array.length - 1).downto(0) do |i|
    products[i] = products[i] * upper_product
    upper_product = upper_product * array[i]
  end

  products
end
