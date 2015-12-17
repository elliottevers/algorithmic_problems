require 'rspec'
require_relative '../lib/productify'

describe '#productify' do
  it 'works' do
    expect(productify([1,2,3,4])).to eq [24, 12, 8, 6]
  end
end
