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
    
  end

  def test_space_end_many

  end

  def test_space_middle

  end

  def test_space_middle_many

  end

  def test_space_mixed

  end

  def test_no_space

  end
end

