require 'pry'
require_relative '../lib/common_subsets'

describe '#common_subsets' do
  it 'works' do
    expect(common_subsets([1,2,3], [3,4,5])).to eq [[3], []]
  end
end
