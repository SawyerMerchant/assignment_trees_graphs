require_relative 'node'

class BinaryTree

  attr_reader :data, :root

  def initialize(num_arr)
    if !all_ints?(num_arr) || !no_repeats?(num_arr)
      raise ArgumentError
    end
    @data = num_arr
  end

  def add_root
    @root = Node.new(data.shift, nil, nil, 0)
  end

  private

  def all_ints?(array)
    array.all? { |n| n.is_a?(Integer) }
  end

  def no_repeats?(array)
    array.uniq.length == array.length
  end

end