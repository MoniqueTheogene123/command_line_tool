class Person
    attr_accessor :f_name, :l_name
    def initialize(f_name, l_name)
        @f_name = f_name
        @l_name = l_name
    end

    def full_name
        "#{f_name} #{l_name}"
    end
end

# person2 = Person.new("John", "Smith")
# puts person2.full_name



