require 'minitest/autorun'
require_relative './test_task'
require 'date'

require_relative 'test_app'

class TestTask < Minitest::Test
  def setup
    @task = Task.new('Buy groceries')
  end

  def test_initialization
    assert_equal 'Buy groceries', @task.detail
  end

  def test_detail_capitalization
    task = Task.new('clean room')
    assert_equal 'Clean room', task.detail
  end

  def test_empty_task
    task = Task.new('')
    assert_equal '', task.detail
  end
end