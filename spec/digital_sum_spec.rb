require 'rspec'
require_relative '../lib/digital_sum.rb'

describe '#digital_sum' do
  it 'works on large sums' do
    expect(digital_sum(65536)).to eq 7
  end
end
