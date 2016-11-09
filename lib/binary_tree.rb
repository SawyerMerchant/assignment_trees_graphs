require_relative 'node'

class BinaryTree

  attr_reader :data, :root

  def initialize(num_arr)
    if !all_ints?(num_arr) || !no_repeats?(num_arr)
      raise ArgumentError
    end
    @data = num_arr
  end

  def add_root # note => modifies @data
    @root = Node.new(@data.shift, nil, nil)
  end

  def add_node # note => modifies @data
    new_node = Node.new(@data.shift, nil, nil)
    parent = find_parent(new_node)
    if new_node.value < parent.value
      parent.left = new_node
    else
      parent.right = new_node
    end
  end

  private

  def all_ints?(array)
    array.all? { |n| n.is_a?(Integer) }
  end

  def no_repeats?(array)
    array.uniq.length == array.length
  end

  def find_parent(new_node, start = root)
    case new_node.value <=> start.value
    when -1 #check left
      if start.left == nil
        return start
      else
        start = start.left
        find_parent(new_node, start)
      end
    when 1 #check right
      if start.right == nil
        return start
      else
        start = start.right
        find_parent(new_node, start)
      end
    end
  end
end