require 'pry'

#returns whether the node is a root of a binary search tree

def bst?(node)
  result = true
  hopefully_sorted = inorder_traversal_node(node)
  hopefully_sorted.each_with_index do |item, index|
    break if hopefully_sorted[index + 1].nil?
    if hopefully_sorted[index] > hopefully_sorted[index + 1]
      return false
    end
  end
  true
end

def inorder_traversal_node(node)

  sorted_array = []
  node.each do |node|
    #according to the avl_tree api
    sorted_array << node.last
  end

  sorted_array
end
