require 'rspec'
require_relative '../lib/all_subsets'

describe "#all_subsets" do
  it 'works' do
    expect(all_subsets([1,2,3,4,5])).to include([])
    expect(all_subsets([1,2,3,4,5])).to include([1,3])
    expect(all_subsets([1,2,3,4,5])).to include([1,2,4])
  end
end
