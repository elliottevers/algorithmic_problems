# given two nodes in a binary tree, find their common ancestor node
def lca(root, value1, value2)
  value1, value2 = value2, value1 if value1 > value2
  if !!left_subtree(root).retrieve(value1) && !!right_subtree(root).retrieve(value2)
    return root
  elsif !left_subtree(root).retrieve(value1)
    lca(root.right, value1, value2)
  else
    lca(root.left, value1, value2)
  end
end

def left_subtree(node)
  node.left
end

def right_subtree(node)
  node.right
end

class AVLTree
  def root
    @root
  end
end
