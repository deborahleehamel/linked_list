require './lib/node_jungle'
require "pry"

class List
  attr_accessor :head

  def initialize
    @head = nil
  end
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

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
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

  def insert(data, position)
    if position > count
      "position doesn't exist"
    elsif position == 0
      prepend(data)
    else
      new_node = Node.new(data)
      before = @head
        (position -1).times do
          before =  before.next_node
        end
      after = before.next_node
      before.next_node = new_node
      new_node.next_node = after
    end
  end

  def includes?(word)
    current = @head

    until current.next_node == nil
      if current.data == word
        break
      else
        current = current.next_node
        end
      end
      current.data == word
  end

  def play

    #iterate through each node and save the data to a string beats = ""
    #`say -r 500 -v "#{all}"`
  end

end
