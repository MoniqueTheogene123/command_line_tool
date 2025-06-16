
require "date"

# new_date = Date.new
# pp new_date
# pp new_date.class

class Date_series
    attr_accessor :t_date
    def initialize(t_date = nil)
        @t_date = t_date
    end

    def today_date
         "#{t_date.year}/#{t_date.month}/#{t_date.day}"
    end
end


date1 = Date_series.new
date1.t_date = "2025"

puts date1.t_date
puts date1.class



# today = Date.new
# pp "#{today}"