require_relative '../lib/is_binary_search_tree'
require 'avl_tree'

describe '#bst' do
  it 'works' do
    tree = AVLTree.new
    (5..10).each do |i|
      tree.insert(i,i)
    end
    (1..4).each do |i|
      tree.insert(i,i)
    end
    expect(bst?(tree)).to be true
  end
end
