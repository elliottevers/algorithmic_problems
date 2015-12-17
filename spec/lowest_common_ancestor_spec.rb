require 'rspec'
require_relative '../lib/lowest_common_ancestor'
require 'avl_tree'
require 'pry'

describe '#lowest_common_ancestor' do
  it 'works' do
    tree = AVLTree.new
    (1..10).each do |i|
      tree.insert(i, i)
    end
    expect(lca(tree.root, 1, 10).value).to eq 4
    expect(lca(tree.root, 5, 10).value).to eq 8
    expect(lca(tree.root, 5, 7).value).to eq 6
  end
end
