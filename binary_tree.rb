# A binary tree with 3 different traversal methods.
class BinaryTree
  def initialize
    @root = Node.new
  end

  attr_accessor :root

  def pre_order(node)
    p node.data
    pre_order(node.left) unless node.left.nil?
    pre_order(node.right) unless node.right.nil?
  end

  def in_order(node)
    in_order(node.left) unless node.left.nil?
    p node.data
    in_order(node.right) unless node.right.nil?
  end

  def post_order(node)
    post_order(node.left) unless node.left.nil?
    post_order(node.right) unless node.right.nil?
    p node.data
  end

  def traverse
    print "Pre-Order Traversal of tree\n"
    pre_order(@root)

    print "In-Order Traversal of tree\n"
    in_order(@root)

    print "Post-Order Traversal of tree\n"
    post_order(@root)
  end
end
# A Node for the binary tree
class Node
  def initialize
    @left = nil
    @right = nil
    @data = nil
  end

  attr_accessor :left, :right, :data
end

tree = BinaryTree.new
root = tree.root
root.data = 'Tim'

node = Node.new
node.data = 'Phil'
root.right = node

node = Node.new
node.data = 'Craig'
root.right.right = node

node = Node.new
node.data = 'Eddie'
root.right.left = node

node = Node.new
node.data = 'Jony'
root.left = node

node = Node.new
node.data = 'Dan'
root.left.left = node

node = Node.new
node.data = 'Katie'
root.left.right = node

node = Node.new
node.data = 'Andrea'
root.left.right.left = node

node = Node.new
node.data = 'Peter'
root.left.right.right = node

tree.traverse
