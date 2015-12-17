require 'rspec'
require_relative '../lib/sorted_median'

describe "#sorted_median" do
  it 'finds the median of two sorted arrays' do
    array_1, array_2 = [1,3,5,7,8], [-4,-1,6,9]
    expect(sorted_median(array_1, array_2)).to eq 5
  end
end
