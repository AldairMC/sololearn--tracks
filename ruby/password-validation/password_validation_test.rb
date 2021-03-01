require "minitest/autorun"
require_relative 'password_validation'

class TestPasswordValidation < MiniTest::Test
  def test_simple_string
    # skip
    assert_equal 'weak', PasswordValidation.new('Name').validate
  end

  def test_simple_number
    # skip
    assert_equal 'weak', PasswordValidation.new('12345').validate
  end

  def test_combination_leters_and_numbers
    # skip
    assert_equal 'weak', PasswordValidation.new('abc123').validate
  end
end
