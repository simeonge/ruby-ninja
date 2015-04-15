require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class TestStringRotation < MiniTest::Unit::TestCase

  def test_empty
    assert(!is_rotation("", ""))
  end

  def test_one_empty
    assert(!is_rotation("adssda", ""))
  end

  def test_identical
    assert(is_rotation("cartman", "cartman"))
  end

  def test_small_is
    assert(is_rotation("ab", "ba"))
  end

  def test_small_not
    assert(!is_rotation("ab", "ca"))
  end

  def test_different
    assert(!is_rotation("asdgsa", "gasdgs"))
  end

  def test_mid_is
    assert(is_rotation("nums", "umsn"))
  end

  def test_mid_not
    assert(!is_rotation("test", "ests"))
  end

  def test_large_is
    assert(is_rotation("longword", "wordlong"))
  end

  def test_large_not
    assert(!is_rotation("asfhasfh", "qwrhrr"))
  end

  def test_oneway
    assert(is_rotation("omputerprocessorc", "computerprocessor"))
  end

  def test_otherway
    assert(is_rotation("rcomputerprocesso", "computerprocessor"))
  end

  def test_middle
    assert(is_rotation("omputerprocessorc", "computerprocessor"))
  end
end

