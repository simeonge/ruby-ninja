require 'minitest/autorun'
require_relative '../linked_list_challenges.rb'

class TestRemoveMiddle < MiniTest::Unit::TestCase

  def setup
    @list = LinkedList.new
  end

  def test_three
    @list.insert(89, 0)
    @list.insert(32, 1)
    @list.insert(99, 2)
    mid = @list.head.nxt
    assert("89 -> 99 -> ", remove_middle(@list, mid).to_s)
  end

  def test_five
    @list.insert(-12, 0)
    @list.insert(89, 1)
    @list.insert(32, 2)
    @list.insert(99, 3)
    @list.insert(971, 4)
    mid = @list.head.nxt.nxt
    assert_equal("-12 -> 89 -> 99 -> 971 -> ", remove_middle(@list, mid).to_s)
  end

  def test_seven
    @list.insert(-12, 0)
    @list.insert(89, 1)
    @list.insert(32, 2)
    @list.insert(99, 3)
    @list.insert(971, 4)
    @list.insert(111, 5)
    @list.insert(153, 6)
    mid = @list.head.nxt.nxt.nxt
    assert_equal("-12 -> 89 -> 32 -> 971 -> 111 -> 153 -> ", remove_middle(@list, mid).to_s)
  end

end

