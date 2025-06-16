require 'date'

class Task
    attr_accessor :detail, :created_at
    def initialize(detail, created_at)
        @detail = detail
        @created_at = Date.today
    end
end
