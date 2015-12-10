gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/list_jungle'
require './lib/node_jungle'

class ListTest < Minitest::Test

  #TAIL TESTS
  def test_has_a_tail
     list = List.new
     list.append("SUP")
     assert_equal true, list.head.tail?
  end

  #APPEND TESTS
  def test_if_can_add_a_new_node
    list = List.new
    list.append("boo")
    assert_equal list.head.data, "boo"
  end

  def test_if_can_add_another_node
    list = List.new
    list.append("boo")
    list.append("beep")
    assert_equal list.head.next_node.data, "beep"
  end

  def test_if_can_add_3_nodes
    list = List.new
    list.append("boo")
    list.append("beep")
    list.append("bop")
    assert_equal list.head.next_node.next_node.data, "bop"
  end

  #PREPEND TEST
  def test_it_can_insert_in_position_two
    list = List.new
    list.append("boo")
    list.append("beep")
    list.prepend("blah")
    assert_equal list.head.data, "blah"
  end

  #insert_after TEST
  def test_if_can_add_0_nodes
    list = List.new
    list.insert("D", 0)
    assert_equal list.head.data, "D"
  end

  def test_if_can_add_3_nodes
    list = List.new
    list.append("A")
    list.append("B")
    list.append("C")
    list.insert("D", 2)
    assert_equal list.head.next_node.next_node.data, "D"
  end

  def test_if_cannot_enter_in_a_position_that_does_not_exist
    list = List.new
    list.append("A")
    list.append("B")
    list.append("C")

    assert_equal(list.insert("D", 20), "position doesn't exist")
  end



  #POP TESTS
  def test_if_can_pop_from_a_1_node_list
    list = List.new
    list.append("boo")
    list.pop
    assert_equal list.head, nil
  end

  def test_if_can_pop_a_node_from_2_node_list
    list = List.new
    list.append("boo")
    list.append("beep")
    list.pop
    assert_equal list.head.next_node, nil
  end

  def test_if_can_pop_from_three_node_list
    list = List.new
    list.append("boo")
    list.append("beep")
    list.append("bop")
    list.pop
    assert_equal list.head.next_node.next_node, nil
  end

  #COUNT TEST
  def test_if_count_is_0_on_empty_list
     list1 = List.new
     assert_equal 0, list1.count
   end

  def test_if_can_count_nodes_in_list
    list1 = List.new
    node1 = Node.new("boo")
    list1.append("boo")
    assert_equal 1, list1.count
  end

  def test_if_can_count_nodes_in_list
     list1 = List.new
     node1 = Node.new("boo")
     node2 = Node.new("boo")
     list1.append("boo")
     list1.append("boo")
     assert_equal 2, list1.count
   end

   def test_if_can_count_nodes_in_list
     list1 = List.new
     node1 = Node.new("boo")
     node2 = Node.new("boo")
     node3 = Node.new("boo")
     list1.append("boo")
     list1.append("boo")
     list1.append("boo")
     assert_equal 3, list1.count
   end
end
