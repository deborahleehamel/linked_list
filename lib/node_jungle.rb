class Node
attr_reader :data
attr_accessor :next_node

# data variable hold data value for each node
# next_node variable is pointer to next node in list
  def initialize(data)
    @data = data
    @next_node = nil
  end

# append an element to the end of the list
  def append_link(data)
    self.next_node = Node.new
  end

# prepend and element at the beginning of the list

# insert one element at arbitrary position in list
  def remove_link(node)
    self.next_node = nil
  end

# if next node point to nil then that is the tail
  def tail?
    next_node.nil?
  end

end
