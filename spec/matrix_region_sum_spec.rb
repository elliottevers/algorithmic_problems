require 'rspec'
require_relative '../lib/matrix_region_sum'
describe '#mrs' do
  it 'works' do
    matrix = Array.new(12) { |i| Array.new(6) { |i| 1 }}
    expect(mrs(matrix, [0,0], [11, 5])).to eq 72
  end
end

describe '#submatrix' do
  it 'works' do
    matrix = Array.new(12) { |i| Array.new(6) { |i| 1 }}
    expect(submatrix(matrix, [1,1], [3,3])).to eq [[1,1,1],[1,1,1],[1,1,1]]
  end
end
