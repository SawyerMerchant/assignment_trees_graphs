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

end