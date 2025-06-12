require 'terminal-table'

rows = []
rows << ['Data 1', 'Value A']
rows << ['Data 2', 'Value B']
rows << ['Data 3', 'Value C']

table = Terminal::Table.new :rows => rows
puts table

