require './lib/node_jungle'
require "pry"
class List

attr_accessor :head

# when nothing in list head is nil
  def empty?
    @head == nil
  end

  def append(data)
    node = Node.new(data)
    current_node = @head

    if empty?
      @head = node
    else
      while !current_node.tail?
        current_node = current_node.next_node
      end
      current_node.next_node = node
    end
  end

  def pop
    current_node = @head

    if current_node.tail?
      @head = nil
    else

      while !current_node.tail?
        previous_node = current_node
        current_node = current_node.next_node
      end
      previous_node.next_node = nil
    end
  end

def count
  @count = 0
  unless empty?
    #if not empty add 1 right away for head node
    @count += 1
    get_next_node(self.head)
  end
  @count
end

# after counting the head, count all next nodes
def get_next_node(node)
  # @count == 1
  if node && node.next_node
    temp_node = node.next_node
    @count += 1
    # @count == 2
    get_next_node(temp_node)
  end
end



  def play

    #iterate through each node and save the data to a string beats = ""
    #`say -r 500 -v Boing beats`
  end


  #def prepend  an element at the beginning of the list
  #end
  #
  #
  # def includes?
  # gives back true or false whether the supplied value is in the list
  # end
  #
  #
  #
  # def delete data
  #   return nil if empty?
  #   if @head.data == data
  #     deleted = @head
  #     @head = @head.next
  #   else
  #     before = @head.find_before(data)
  #     return nil if before.nil?
  #     deleted = before.next
  #     before.next = deleted.next
  #   end
  #   deleted.data
  # end
  #
  # def insert_after after, data
  #   return push data if after.nil?
  #   raise ElementNotFound.new if empty?
  #   after_item = @head.find(after)
  #   raise ElementNotFound.new if after_item.nil?
  #   after_item.next = Item.new(data)
  # end

  def play

    #iterate through each node and save the data to a string beats = ""
    #`say -r 500 -v Boing beats`
  end

end
