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
    assert_instance_of DateTime, @task.created_at
  end

  def test_detail_capitalization
    task = Task.new('clean room')
    assert_equal 'Clean room', task.detail
  end

  def test_created_at_is_recent
    current_time = DateTime.now
    time_difference = (current_time - @task.created_at).to_f * 24 * 60 * 60 # in seconds
    assert_operator time_difference, :<, 5 # Created within last 5 seconds
  end

  def test_empty_task
    task = Task.new('')
    assert_equal '', task.detail
  end
end