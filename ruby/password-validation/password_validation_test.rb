require "minitest/autorun"
require_relative 'password_validation'

class TestPasswordValidation < MiniTest::Test
  def test_simple_string
    # skip
    assert_equal 'weak', PasswordValidation.new('name').validate
  end

  def test_simple_number
    # skip
    assert_equal 'weak', PasswordValidation.new('12345').validate
  end

  def test_combination_leters_and_numbers
    # skip
    assert_equal 'weak', PasswordValidation.new('abc123').validate
  end

  def test_only_special_characters
    # skip
    assert_equal 'weak', PasswordValidation.new('#$%&/').validate
  end

  def test_combination_leters_and_special_characters
    # skip
    assert_equal 'weak', PasswordValidation.new('abcd#$%').validate
  end

  def test_combination_special_characters_and_number
    # skip
    assert_equal 'weak', PasswordValidation.new('$%&/1234').validate
  end

  def test_combination_leters_numbers_and_special_characters_but_length_six
    # skip
    assert_equal 'weak', PasswordValidation.new('ab#$12').validate
  end


end
