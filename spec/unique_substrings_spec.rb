require 'rspec'
require_relative '../lib/unique_substrings'

describe '#unique_substrings' do
  it 'works on word with distinct characters' do
    expect(unique_substrings("hi")).to eq ["h", "", "hi", "i"]
  end

end
