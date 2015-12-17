require 'rspec'
require '../lib/largest_continuous_subsum'

describe '#lcs' do
  it 'works' do
    array = [5,3,-7,6]
    expect(lcs(array)).to eq 8
  end
end

describe '#largest_suffix_sum' do
  it 'works' do
    array = [1,2,3,4]
    expect(largest_suffix_sum(array)).to eq 10
    array2 = [1,2,3,-4,5,8]
    expect(largest_suffix_sum(array2)).to eq 13
  end
end
