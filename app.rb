require 'terminal-table'
require_relative "person"
require_relative "task"

person = Person.new(@f_name, @l_name)
task = Task.new(@detail, @created_at)

print "whats your first name:   "
person.f_name = gets.chomp.capitalize

print "whats your last name:   "
person.l_name = gets.chomp.capitalize

print "please enter your task:  "
task.detail = gets.chomp.capitalize

puts "\n\n'NewEntry: #{person.full_name} #{task.detail}'"

rows = []
rows << ['person', 'date_series', 'task']
rows << [person.full_name, task.created_at, task.detail]
table = Terminal::Table.new :rows => rows
puts table

