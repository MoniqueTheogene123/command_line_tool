require 'date'

class Task
    attr_accessor :detail, :created_at
    def initialize(detail)
        @detail = detail
        @created_at = Date.today
    end
end
