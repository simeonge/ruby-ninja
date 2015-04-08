require 'minitest/autorun'
require_relative '../linked_list_challenges.rb'

class TestRemoveDupes < MiniTest::Unit::TestCase

  def setup
    @list = LinkedList.new
  end

  def test_empty
    assert_equal("", remove_dupes(@list).to_s)
  end

  def test_single
    @list.insert(43, 0)
    assert_equal("43 -> ", remove_dupes(@list).to_s)
  end

  def test_two
    @list.insert(32, 0)
    @list.insert(31, 1)
    assert_equal("32 -> 31 -> ", remove_dupes(@list).to_s)
  end

  def test_two_same
    @list.insert(89, 0)
    @list.insert(89, 1)
    assert_equal("89 -> ", remove_dupes(@list).to_s)
  end

  def test_uniq
    @list.insert(34, 0)
    @list.insert(21, 1)
    @list.insert(60, 2)
    @list.insert(89, 3)
    @list.insert(1242, 4)
    assert_equal("34 -> 21 -> 60 -> 89 -> 1242 -> ", remove_dupes(@list).to_s)
  end

  def test_large_same
    @list.insert(8, 0)
    @list.insert(8, 0)
    @list.insert(8, 0)
    @list.insert(8, 0)
    @list.insert(8, 0)
    @list.insert(8, 0)
    assert_equal("8 -> ", remove_dupes(@list).to_s)
  end

  def test_large_mixed
    @list.insert(3, 0)
    @list.insert(8, 1)
    @list.insert(3, 2)
    @list.insert(78, 3)
    @list.insert(83, 4)
    @list.insert(91, 5)
    @list.insert(8, 6)
    @list.insert(91, 7)
    assert_equal("3 -> 78 -> 83 -> 8 -> 91 -> ", remove_dupes(@list).to_s)
  end

end

