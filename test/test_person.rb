require 'minitest/autorun'
require_relative './test_person'
require 'date'

require_relative 'test_app'

class TestPerson < Minitest::Test
  def setup
    @person = Person.new('John', 'Doe')
  end

  def test_initialization
    assert_equal 'John', @person.first_name
    assert_equal 'Doe', @person.last_name
  end

  def test_full_name
    assert_equal 'John Doe', @person.full_name
  end

  def test_name_capitalization
    person = Person.new('joe', 'bloggs')
    assert_equal 'Joe', person.first_name
    assert_equal 'Bloggs', person.last_name
  end

  def test_empty_names
    person = Person.new('', '')
    assert_equal '', person.first_name
    assert_equal '', person.last_name
    assert_equal ' ', person.full_name # Might want to handle this case better
  end
end