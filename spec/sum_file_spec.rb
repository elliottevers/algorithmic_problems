require 'rspec'
require_relative '../lib/sum_file'

describe '#sum_file' do
  it 'works' do
    array = file_to_array(File.join(File.dirname(__FILE__), '../number_file.rb'))
    expect(array).to eq (1..10).to_a
    expect(sum(array)).to eq 55
  end
end
