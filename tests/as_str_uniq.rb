require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class StringUniqTest < MiniTest::Unit::TestCase

  def test_empty
    assert(string_uniq(""))
  end

  def test_uniq_1
    assert(string_uniq("pengui"))
  end

  def test_uniq_2
    assert(string_uniq("abcdefghijklmnopqrstuvwxyz"))
  end

  def test_uniq_3
    assert(string_uniq("I amwsoe"))
  end

  def test_uniq_4
    assert(string_uniq("472"))
  end

  def test_non_uniq_1
    assert(!string_uniq("  "))
  end

  def test_non_uniq_2
    assert(!string_uniq("8azsxdcfvgbhn8"))
  end

  def test_non_uniq_3
    assert(!string_uniq("I am awesome"))
  end

  def test_non_uniq_4
    assert(!string_uniq("penguin"))
  end

end

