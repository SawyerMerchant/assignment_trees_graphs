require 'binary_tree'

describe BinaryTree do

  let(:test_tree) { BinaryTree.new([8, 10, 3, 1, 6, 14, 4, 7, 13]) } 
  let(:string_tree) { BinaryTree.new([8, 10, 3, "he", 6, 14, 4, 7, 13]) }
  let(:dup_tree) { BinaryTree.new([8, 10, 3, 6, 6, 14, 8, 7, 13]) }

  describe '#initialize' do

    it 'accepts an array' do
      expect(test_tree.data).to be_a(Array)
    end

    it 'raises an error if array doesn\'t have all ints' do
      expect { string_tree }.to raise_error(ArgumentError)
    end

    it 'does not have repeating chars' do
      expect { dup_tree }.to raise_error(ArgumentError)
    end

  end

  describe '#add_root' do

    it 'creates first node from first int in array' do
      test_tree.add_root
      expect(test_tree.root).to be_a(Node)
    end

  end

  describe '#add_node' do

    xit 'creates a left child if the parent doesn\'t have a left child' do
    end

    it 'creates a right node for value greater than parent' do
      test_tree.add_root # 8
      test_tree.add_node # 10
      expect(test_tree.root.right).to be_a(Node)
      expect(test_tree.root.right.data).to eq(10)
    end

  end

end