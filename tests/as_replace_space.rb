require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class StringReplaceSpaceTest < MiniTest::Unit::TestCase

  def test_empty
    assert_equal("", replace_space(""))
  end

end

