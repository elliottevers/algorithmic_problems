require 'rspec'
require_relative '../lib/reach_first_index'

describe '#reach' do
  it 'works' do
    expect(reach([1,2,3,4,5], 2)).to eq false
  end
end
