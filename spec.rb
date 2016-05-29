require_relative 'fixed_array'
require_relative 'array_list'
require_relative 'linked_list'

describe FixedArray do

  let(:test) { FixedArray.new(3) }

  it 'instantiates with a fixed length value' do
    expect(test.length).to be 3
  end

  it 'gets a value from a specified index' do
    test.contents[0] = "A"
    expect(test.get(0)).to match "A"
  end

  it 'raises an OutOfBoundsException if getting index greater than length' do
    expect { test.get(3) }.to raise_exception(OutOfBoundsException)
  end

  it 'sets a value at a specified index' do
    test.set(0, "A")
    expect(test.get(0)).to match "A"
  end

  it 'raises an OutOfBoundsException if setting an index greater than length' do
    expect { test.set(5, 'B') }.to raise_exception(OutOfBoundsException)
  end

end

describe ArrayList do

  let(:test) { ArrayList.new(3) }

  it 'instantiates with an initial size value' do
    expect(test.length).to be 3
  end

  it 'adds an element with the #add method' do
    expect { test.add("A") }.to change {test.length}.from(3).to(4)
  end

  it 'returns the added value when using the #add method' do
    expect(test.add("A")).to match "A"
  end

  it 'retrieves the element at a given index using #get' do
    test.contents[0] = "A"
    expect(test.get(0)).to match "A"
  end

  it 'throws an OutOfBoundsException when getting value at undefined index' do
    expect { test.get(4) }.to raise_exception(OutOfBoundsException)
  end

  it 'sets the value at given index with #set' do
    test.set(0, "A")
    expect(test.get(0)).to match "A"
  end

  it 'throws an OutOfBoundsException when setting to invalid index' do
    expect { test.set(5, "B") }.to raise_exception(OutOfBoundsException)
  end

  it 'shows the array length using the #length method' do
    test.add("A")
    expect(test.length).to eq 4
  end

  it 'allows user to #insert element at a given index' do
    test.set(1, "A")
    test.insert(1, "B")
    expect(test.get(1)).to eq "B"
    expect(test.get(2)).to eq "A"
  end

  it 'throws an OutOfBoundsException when inserting into undefined index' do
    expect { test.insert(4, "A") }.to raise_exception(OutOfBoundsException)
  end

end

describe LinkedList do

  let(:test_node) { Node.new("A") }
  let(:test_node_2) { Node.new("B") }
  let(:test_list) { LinkedList.new }

  describe Node do

    before(:each) do
      test_node.insert_after(test_node_2)
    end

    it 'should instantiate a new instance of Node with element "A"' do
      expect(test_node).to be_an_instance_of(Node)
    end

    it "should define the node's value with argument" do
      expect(test_node.value).to eq "A"
    end

    it 'should define the next node using insert_after()' do
      expect(test_node.points_to).to be test_node_2
    end

    it 'should remove the next node with remove_after()' do
      test_node.remove_after()
      expect(test_node.points_to).to be nil
    end

  end



end