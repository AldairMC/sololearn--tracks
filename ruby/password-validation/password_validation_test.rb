require "minitest/autorun"
require_relative 'password_validation'

class TestPasswordValidation < MiniTest::Test
  def test_simple_string
    skip
    assert_equal 'weak', PasswordValidation.new('name').validate
  end

  def test_simple_number
    skip
    assert_equal 'weak', PasswordValidation.new('12345').validate
  end

  def test_combination_leters_and_numbers
    skip
    assert_equal 'weak', PasswordValidation.new('abc123').validate
  end

  def test_only_special_characters
    skip
    assert_equal 'weak', PasswordValidation.new('#$%&/').validate
  end

  def test_combination_leters_and_special_characters
    skip
    assert_equal 'weak', PasswordValidation.new('abcd#$%').validate
  end

  def test_combination_special_characters_and_number
    skip
    assert_equal 'weak', PasswordValidation.new('$%&/1234').validate
  end

  def test_combination_leters_numbers_and_special_characters_but_length_six
    skip
    assert_equal 'weak', PasswordValidation.new('ab#$12').validate
  end

  def test_combination_lettrs_numbers_and_spaces
    skip
    assert_equal 'weak', PasswordValidation.new('ab23  ').validate
  end

  def test_only_spaces
    skip
    assert_equal 'weak', PasswordValidation.new('      ').validate
  end

  def test_password_correct
    skip
    assert_equal 'strong', PasswordValidation.new("hello@$world23").validate
  end

  def test_password_correct_with_special_characters_at_the_beginning
    skip
    assert_equal 'strong', PasswordValidation.new("%&helloworld90").validate
  end

  def test_password_correct_with_numbers_at_the_beginning
    skip
    assert_equal 'strong', PasswordValidation.new("89helloword)%").validate
  end

  def test_password_correct_with_special_character_and_number_at_the_beginning
    skip
    assert_equal 'strong', PasswordValidation.new("12()helloworld")
  end

  def  test_password_correct_with_space_at_the_beginning
    skip
    assert_equal 'strong', PasswordValidation.new("  helloworld30").validate
  end
end
