# given an array
# build tree from array
# output it in a simple, clean fashion
  # left padding
  # depth 
 
# Your tree:
#           8
#       /       \
#     3          10
#  /      \         \
# 1        6         14
#       /    \      /
#      4      7   13

require 'node'

describe Node do

  let(:left_node) { Node.new(5, nil, nil)}
  let(:right_node) { Node.new(11, nil, nil)}
  let(:test_node) { Node.new(10, left_node, right_node) }

  it 'takes an integer' do
    expect(test_node.value).to eq(10)
  end

  it 'takes a left node' do
    expect(test_node.left).to eq(left_node)
  end

  it 'takes a right node' do
    expect(test_node.right).to eq(right_node)
  end

  # it 'takes a depth' do
  #   expect(test_node.depth).to eq(0)
  # end

end
