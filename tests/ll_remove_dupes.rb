require 'minitest/autorun'
require_relative '../linked_list.rb'
require_relative '../linked_list_challenges.rb'

class TestRemoveDupes < MiniTest::Unit::TestCase

  def setup
    @list = LinkedList.new
  end

  def test_empty
    assert_equal("", remove_dupes(@list).to_s)
  end

  def test_single

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

  end

  def test_large_same

  end

  def test_large_mixed

  end

end

