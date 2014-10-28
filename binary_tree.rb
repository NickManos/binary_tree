class BinaryTree

  def initialize()
    @root = Node.new
  end

  attr_accessor :root

  def preOrder(node)
    p node.data
    if node.left != nil
      preOrder(node.left)
    end
    if node.right != nil
      preOrder(node.right)
    end
  end

  def inOrder(node)
    if node.left != nil
      inOrder(node.left)
    end
    p node.data
    if node.right != nil
      inOrder(node.right)
    end
  end

  def postOrder(node)
    if node.left != nil
      postOrder(node.left)
    end
    if node.right != nil
      postOrder(node.right)
    end
    p node.data
  end

  def traverse
    print "Pre-Order Traversal of tree\n"
    preOrder(@root)

    print "In-Order Traversal of tree\n"
    inOrder(@root)

    print "Post-Order Traversal of tree\n"
    postOrder(@root)
  end

end

class Node

  def initialize()
    @left = nil
    @right = nil
    @data = nil
  end

  attr_accessor :left, :right, :data

end

tree = BinaryTree.new
root = tree.root
root.data = "Tim"

node = Node.new
node.data = "Phil"
root.right = node

node = Node.new
node.data = "Craig"
root.right.right = node

node = Node.new
node.data = "Eddie"
root.right.left = node

node = Node.new
node.data = "Jony"
root.left = node

node = Node.new
node.data = "Dan"
root.left.left = node

node = Node.new
node.data = "Katie"
root.left.right = node

node = Node.new
node.data = "Andrea"
root.left.right.left = node

node = Node.new
node.data = "Peter"
root.left.right.right = node

tree.traverse
