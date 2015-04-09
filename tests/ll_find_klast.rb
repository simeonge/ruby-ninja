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
    assert_equal(8, find_klast(@list, 10))
  end

  def test_middle
    assert_equal(57, find_klast(@list, 5))
  end

  def test_end
    assert_equal(3, find_klast(@list, 3))
  end

  def test_beginning
    assert_equal(11, find_klast(@list, 9))
  end

  def test_outofbounds_before
    assert_equal(nil, find_klast(@list, 20))
  end

  def test_outofbounds_after
    assert_equal(nil, find_klast(@list, -5))
  end

  def test_outofbounds_zero
    assert_equal(nil, find_klast(@list, 0))
  end

end

