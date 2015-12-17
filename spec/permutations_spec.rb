require_relative '../lib/permutation'
require 'pry'

describe '#permutations' do
  it 'works' do
    array = [1,2,3]
    expect(permutations(array)).to eq [[3, 2, 1], [2, 3, 1], [2, 1, 3], [3, 1, 2], [1, 3, 2], [1, 2, 3]]
  end
end
