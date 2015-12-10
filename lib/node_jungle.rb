class Node
attr_reader :data
attr_accessor :next_node

# data variable holds data value for each node
# next_node variable is pointer to next node in list
  def initialize(data)
    @data = data
    @next_node = nil
  end

# if next node point to nil then that is the tail
  def tail?
    next_node.nil?
  end

end
