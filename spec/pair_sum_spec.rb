require 'rspec'
require_relative '../lib/pair_sum'

describe '#pair_sum' do
  it 'works' do
    set = Set.new
    set.add([-1,1])
    set.add([-2,2])
    array = [1, 2, -1, -1, -2]
    expect(pair_sum(array, 0)).to eq set
  end
end
