require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class CompressStringTest < MiniTest::Unit::TestCase

  def test_empty
    assert_equal("", compress(""))
  end

  def test_one_letter_one
    assert_equal("a", compress("a"))
  end

  def test_one_letter_two
    assert_equal("bb", compress("bb"))
  end

  def test_one_letter_three
    assert_equal("c3", compress("ccc"))
  end

  def test_one_letter_many
    assert_equal("d6", compress("dddddd"))
  end

  def test_two_letter_one
    assert_equal("pq", compress("pq"))
  end

  def test_two_letter_two
    assert_equal("ppqq", compress("ppqq"))
  end

  def test_two_letter_three
    assert_equal("p3q3", compress("pppqqq"))
  end

  def test_many_letter_one
    assert_equal("abcd", compress("abcd"))
  end

  def test_many_letter_two
    assert_equal("aabbccd", compress("aabbccd"))
  end

  def test_many_letter_three
    assert_equal("a3b3c3d1", compress("aaabbbcccd"))
  end

  def test_mixed
    assert_equal("aiysdgmwe", compress("aiysdgmwe"))
  end

  def test_large
    assert_equal("a3b1c1d1e6f1g1h6i2j1k4i4", compress("aaabcdeeeeeefghhhhhhiijkkkkiiii"))
  end
end

