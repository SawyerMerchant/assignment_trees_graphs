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

  let(:test_node) { Node.new(10) }

  it 'takes an integer' do 
    expect(test_node.value).to eq(10)    
  end

end
