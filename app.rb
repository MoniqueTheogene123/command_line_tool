require 'terminal-table'
require_relative "person"
require_relative "task"
require "date"

person = Person.new(@f_name, @l_name)
task = Task.new(@detail, @created_at)

# person1 = Hash.new
# person1.store(:f_name, "Sun")
# person1.store(:l_name, "Shine")
# person1.store(:created_at, Date.today.to_s)
# person1.store(:detail, "task")

# event_hash = {}
# pp person1.keys
# pp person1.values



user_input_all = {}
print "whats your first name:   "
user_input_all["person.f_name"] = gets.chomp.capitalize

print "whats your last name:   "
user_input_all["person.l_name"] = gets.chomp.capitalize

print "please enter your task:  "
user_input_all["task.detail"] = gets.chomp.capitalize



user_input_all["full_name"] = full_name
user_input_all["created_at"] = created_at
user_input_all["details"] = details
puts user_input_all




puts "\n\n'NewEntry: #{person.full_name} #{task.detail}'"


rows = []
rows << ['person', 'date_series', 'task']
rows << [person.full_name, task.created_at, task.detail]
table = Terminal::Table.new :rows => rows
puts table

