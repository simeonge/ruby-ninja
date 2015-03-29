require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class StringReverseTest < MiniTest::Unit::TestCase
  
  def test_empty
    assert_equal("", reverse(""))
  end

  def test_single_char
    assert_equal("t", reverse("t"))
  end

  def test_two_char
    assert_equal("re", reverse("er"))
  end

  def test_low_cap
    assert_equal("maI", reverse("Iam"))
  end

  def test_palindrome
    assert_equal("paghgap", reverse("paghgap"))
  end

  def test_name
    assert_equal("namtraC cirE", reverse("Eric Cartman"))
  end

  def test_large
    assert_equal(".ecnetnes gnol a si sihT", reverse("This is a long sentence."))
  end

  def test_nums
    assert_equal("7134697649", reverse("9467964317"))
  end

end
