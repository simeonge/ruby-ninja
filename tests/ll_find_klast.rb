require 'minitest/autorun'
require_relative '../linked_list_challenges.rb'

class TestFindKLast < MiniTest::Unit::TestCase

  def setup
    @list = LinkedList.new
    @list.insert(8, 0)
    @list.insert(11, 1)
    @list.insert(4, 2)
    @list.insert(6, 3)
    @list.insert(73, 4)
    @list.insert(57, 5)
    @list.insert(87, 6)
    @list.insert(3, 7)
    @list.insert(33, 8)
    @list.insert(98, 9)
  end

  def test_empty
    assert_equal(nil, find_klast(LinkedList.new, 2))
  end

  def test_last
    assert_equal(98, find_klast(@list, 1))
  end

  def test_first

  end

  def test_middle

  end

  def test_end

  end

  def test_beginning

  end

  def test_outofbounds_before

  end

  def test_outofbounds_after

  end

end

