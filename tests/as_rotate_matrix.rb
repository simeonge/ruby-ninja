require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class RotateMatrixTest < MiniTest::Unit::TestCase

  def test_empty
    assert_equal([], rotate_matrix([]))
  end

end

