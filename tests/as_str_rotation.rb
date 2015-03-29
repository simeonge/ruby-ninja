require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class StringRotationTest < MiniTest::Unit::TestCase

  def test_empty
    assert(is_rotation("", ""))
  end

end

