require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class StringReplaceSpaceTest < MiniTest::Unit::TestCase

  def test_empty
    assert_equal("", replace_space(""))
  end

  def test_space_only
    assert_equal("%20", replace_space(" "))
  end

  def test_many_space
    assert_equal("%20%20%20%20%20%20", replace_space("      "))
  end

  def test_space_beginning
    assert_equal("%20carrot", replace_space(" carrot"))
  end

  def test_space_beginning_many
    assert_equal("%20%20%20juice", replace_space("   juice"))
  end

  def test_space_end
    assert_equal("mouse%20", replace_space("mouse "))    
  end

  def test_space_end_many
    assert_equal("monitor%20%20%20", replace_space("monitor   "))
  end

  def test_space_middle
    assert_equal("spea%20ker", replace_space("spea ker"))
  end

  def test_space_middle_many
    assert_equal("key%20%20%20%20board", replace_space("key    board"))
  end

  def test_space_mixed
    assert_equal("This%20is%20some%20sentence%20that%20contains%20spaces.%20", replace_space("This is some sentence that contains spaces. "))
  end

  def test_no_space
    assert_equal("abcdefghijklmnopqrstuvwxyz", replace_space("abcdefghijklmnopqrstuvwxyz"))
  end

  def test_url
    assert_equal("https://www.somewebsite.com/spa%20ce%20yu%20rl%20lol%20lol", replace_space("https://www.somewebsite.com/spa ce yu rl lol lol"))
  end
end

