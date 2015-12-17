require 'avl_tree'
require 'pry'

#given the node of a binary search tree, returns the next largest node

def next_largest_node(node)
  inorder_traversal_node(node.right).first
end

def inorder_traversal_node(node)
  sorted_array = []
  node.each do |node|
    #according to the avl_tree api
    sorted_array << node.last
  end
  sorted_array
end
