require 'rspec'
require_relative '../lib/intersection.rb'

describe '#intersection' do
  it 'works' do
    arr1 = [1,3,5,7,6,4]
    arr2 = [1,-4,-7,3,10,12]
    expect(intersection(arr1,arr2)).to eq [1,3]
  end
end
