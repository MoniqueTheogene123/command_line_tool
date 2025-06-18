require "terminal-table"
require_relative "person"
require_relative "task"
require "date"
require "minitest/autorun"

def get_continue_input
  loop do
    print "Do you want to add another entry/task? (y/yes/n/no) "
    input = gets.chomp.downcase
    case input
    when 'y', 'yes' then return true
    when 'n', 'no' then return false
    else puts "Invalid input. Please enter y/yes/n/no"
    end
  end
end

# Minitest for input validation
class TestInputValidation < Minitest::Test
  def setup
    @original_stdin = $stdin
    @original_stdout = $stdout
    $stdout = StringIO.new
  end

  def teardown
    $stdin = @original_stdin
    $stdout = @original_stdout
  end

  def test_continue_input_validation
    test_cases = [
      { input: "y\n", expected: true },
      { input: "yes\n", expected: true },
      { input: "n\n", expected: false },
      { input: "no\n", expected: false },
      { input: "maybe\ny\n", expected: true }  # Tests invalid then valid input
    ]

    test_cases.each do |tc|
      $stdin = StringIO.new(tc[:input])
      assert_equal tc[:expected], get_continue_input
    end
  end
end