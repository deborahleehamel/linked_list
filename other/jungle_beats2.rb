require
require

class Node
  attr_reader :next_node

  def append(new_node)
    @next_node = next_node
  end
end

while current_node: next_node
  puts "got a node: #{current_node}"
  current_node = current_node.next_node
end

n1 = Node.new
n2 = Node.new
n3 = Node.new

n1.append(n2)
n2.append(n3)

puts n1
puts n2
puts n3

current_node = n1

while current_node.next_node
  puts "current node: #{current_node.inspect}"
  current_node = current_node.next_node
end

###run list.rb
