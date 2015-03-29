require 'minitest/autorun'
require_relative '../arrays_strings_challenges.rb'

class StringPermutationTest < MiniTest::Unit::TestCase

  def test_empty
    assert(is_permutation("", ""))
  end

  def test_single_char_is_perm
    assert(is_permutation("a", "a"))
  end

  def test_two_char_is_perm
    assert(is_permutation("qt", "tq"))
  end

  def test_ident_is_perm
    assert(is_permutation("monitor lizard", "monitor lizard"))
  end

  def test_caps_is_perm
    assert(is_permutation("FaLcOn", "ncaLFO"))
  end

  def test_str1_is_perm
    assert(is_permutation("Nexuuuuus", "uusuuuNxe"))
  end

  def test_str2_is_perm
    assert(is_permutation("oapurqwqwqw", "wwwqqqruoap"))
  end

  def test_single_char_not_perm
    assert(!is_permutation("q", "b"))
  end

  def test_two_char_not_perm
    assert(!is_permutation("aa", "aq"))
  end

  def test_str1_not_perm
    assert(!is_permutation("Iudgkasjd", "rwtyjrwtj"))
  end

  def test_diff_freq_not_perm
    assert(!is_permutation("aaeeooiu", "aeiou"))
  end

  def test_str2_not_perm
    assert(!is_permutation("plmnT", "pplmnt"))
  end

  def test_caps_not_perm
    assert(!is_permutation("Aardvark", "aardvark"))
  end

end

