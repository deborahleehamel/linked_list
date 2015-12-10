gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node_jungle'

class NodeTest < Minitest::Test
  def test_if_node_has_data
    node = Node.new("boo")
    assert_equal "boo", node.data
  end

  def test_that_node_has_a_link_to_next_node
    node = Node.new("boo")
    assert_equal nil, node.next_node
  end

  def test_that_node_can_be_string
    node = Node.new("dee")
    assert_equal "dee", node.data
  end
end
