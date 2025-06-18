require "terminal-table"
require_relative "person"
require_relative "task"
require "date"

all_user_inputs = []

loop do
  print "whats your first name:   "
  f_name = gets.chomp.capitalize

  print "whats your last name:   "
  l_name = gets.chomp.capitalize

  print "please enter your task:  "
  task_detail = gets.chomp.capitalize

  #creating instance
  person = Person.new(f_name, l_name)
  task = Task.new(task_detail)

  user_entry = {
    "full_name" => person.full_name,
    "created_at" => task.created_at.to_s,
    "task" => task.detail,
  }

  all_user_inputs << user_entry

  print "Do you want to add another entry/task? (yes/no) "
    break if gets.chomp.downcase != "yes"
end

rows = []
rows << ["Person", "Date Created", "Task"]
all_user_inputs.each do |user_entry|
  rows << [user_entry["full_name"], user_entry["created_at"], user_entry["task"]]
end

table = Terminal::Table.new :rows => rows
puts "\n\nAll Entries: \n"
puts table


