require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class ZerofyMatrixTest < MiniTest::Unit::TestCase

  def test_empty
    assert_equal([], zerofy_matrix([]))
  end

end

