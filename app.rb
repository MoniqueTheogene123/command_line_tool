require 'terminal-table'
require_relative "person"
require_relative "task"

person = Person.new("Monique", "Theogene")
task = Task.new("hello world")

rows = []
rows << ['person', 'date_series', 'task']
rows << [person.full_name, task.created_at, task.detail]
table = Terminal::Table.new :rows => rows
puts table

pp "Whats your first name"
person.f_name = gets
# pp "Hello #{person.f_name}"

pp "Whats your last name"
person.l_name = gets
pp "Hello" + " " + "#{person.full_name}"

pp "What is your task for the day"
task.detail = gets
pp "got lots to do"