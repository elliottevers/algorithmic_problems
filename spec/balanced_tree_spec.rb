require 'avl_tree'
require_relative '../lib/balanced_tree.rb'
require 'pry'

describe '#balanced_tree?' do
  it 'works' do
    tree = AVLTree.new
    (1..5).each do |i|
      tree.insert(i, i)
    end
    # if it wasn't AVL, it would be a linked list with 5 nodes
    expect(balanced_tree?(tree.root)).to be true
  end
end
