class Node

  attr_reader :value, :points_to

  def initialize(value)
    @value = value
  end

  def insert_after(next_node)
    @points_to = next_node
  end

  def remove_after()
    @points_to = nil
  end

end

class LinkedList
end