#given the root of a tree, is the tree balanced?

def balanced_tree?(root)
  if root.height == 0
    true
  else
    balanced_tree?(root.left) &&
    balanced_tree?(root.right) &&
    (root.left.height - root.right.height).abs < 2
  end
end

class AVLTree
  def root
    @root
  end
end
