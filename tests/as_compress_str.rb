require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class CompressStringTest < MiniTest::Unit::TestCase

  def test_empty
    assert_equal("", compress(""))
  end

end

