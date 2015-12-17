require 'rspec'
require '../lib/next_largest_node'

describe '#next_largest_node' do
  it 'works' do
    tree = AVLTree.new
    (1..10).each do |i|
      tree.insert(i, i)
    end
    (20..30).each do |i|
      tree.insert(i, i)
    end
    node = tree.root.retrieve(10)
    expect(next_largest_node(node)).to eq 20
  end

end

class AVLTree::Node
  def retrieve(key)
    case key <=> @key
    when -1
      @left.retrieve(key)
    when 0
      self
    when 1
      @right.retrieve(key)
    else
      nil
    end
  end
end

class AVLTree
  def root
    @root
  end
end
