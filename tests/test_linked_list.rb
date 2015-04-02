require 'minitest/autorun'
require_relative '../linked_list.rb'

class TestLinkedList < MiniTest::Unit::TestCase

  def setup
    @list = LinkedList.new
  end

  def test_empty
    assert_equal("", @list.to_s)
  end

  def test_insert_1
    @list.insert(23, 0)
    assert_equal("23 -> ", @list.to_s)
  end

  def test_insert_2
    @list.insert(54, 0)
    @list.insert(83, 1)
    assert_equal("54 -> 83 -> ", @list.to_s)
  end

  def test_insert_many
    @list.insert(6, 0)
    @list.insert(61, 1)
    @list.insert(43, 2)
    @list.insert(89, 3)
    @list.insert(2, 4)
    assert_equal("6 -> 61 -> 43 -> 89 -> 2 -> ", @list.to_s)
  end

  def test_insert_beginning
    @list.insert(56, 0)
    @list.insert(72, 1)
    @list.insert(12, 2)
    @list.insert(99, 0)
    assert_equal("99 -> 56 -> 72 -> 12 -> ", @list.to_s)
  end

  def test_insert_middle
    @list.insert(1, 0)
    @list.insert(5, 1)
    @list.insert(3, 1)
    assert_equal("1 -> 3 -> 5 -> ", @list.to_s)
  end

  def test_insert_outofboundsindex
    @list.insert(34, 128)
    @list.insert(61, 64)
    @list.insert(643, 256)
    @list.insert(1, 333)
    assert_equal("34 -> 61 -> 643 -> 1 -> ", @list.to_s)
  end

  def test_insert_reverseorder
    @list.insert(43, 0)
    @list.insert(3, 0)
    @list.insert(78, 0)
    @list.insert(124, 0)
    assert_equal("124 -> 78 -> 3 -> 43 -> ", @list.to_s)
  end

  def test_insert_outoforder
    @list.insert(88, 30)
    @list.insert(21, 0)
    @list.insert(3, 5)
    @list.insert(12, 1)
    @list.insert(77, 1)
    @list.insert(99, 3)
    @list.insert(2, 2)
    assert_equal("21 -> 77 -> 2 -> 12 -> 99 -> 88 -> 3 -> ", @list.to_s)
  end

  def test_remove_1
    @list.insert(56, 0)
    @list.insert(72, 1)
    @list.remove(1)
    assert_equal("56 -> ", @list.to_s)
  end

  def test_remove_many
    @list.insert(56, 0)
    @list.insert(72, 1)
    @list.insert(21, 2)
    @list.insert(3, 3)
    @list.insert(12, 4)
    @list.insert(77, 5)
    @list.remove(5)
    @list.remove(4)
    @list.remove(3)
    @list.remove(2)
    @list.remove(1)
    assert_equal("56 -> ", @list.to_s)
  end

  def test_remove_middle
    @list.insert(1, 0)
    @list.insert(2, 1)
    @list.insert(3, 2)
    @list.remove(1)
    assert_equal("1 -> 3 -> ", @list.to_s)
  end

  def test_remove_from_empty
    @list.remove(0)
    @list.remove(5)
    @list.remove(51)
    assert_equal("", @list.to_s)
  end

  def test_remove_beginning
    @list.insert(51, 0)
    @list.insert(71, 1)
    @list.insert(1345, 10)
    @list.remove(0)
    assert_equal("71 -> 1345 -> ", @list.to_s)
  end

  def test_remove_outofboundsindex
    @list.insert(76, 0)
    @list.insert(1500, 1)
    @list.remove(45)
    assert_equal("76 -> ", @list.to_s)
  end

  def test_remove_outoforder
    @list.insert(56, 0)
    @list.insert(72, 1)
    @list.insert(21, 2)
    @list.insert(3, 3)
    @list.insert(12, 4)
    @list.insert(77, 5)
    @list.remove(1)
    @list.remove(3)
    @list.remove(0)
    @list.remove(0)
    @list.remove(1)
    assert_equal("3 -> ", @list.to_s)
  end
end

