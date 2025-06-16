# class Person
#     attr_accessor :f_name, :l_name                  #creates getter methods for these attributes

#     def person1                                       #creates setter methods for these attributes
#         return self.f_name + " " + self.l_name
#     end

#     def person2
#         return self.f_name + " " + self.l_name
#     end

# end

# person1 = Person.new            #can only use one at a time, 
# person1.f_name = "Monique"
# person1.l_name = "Theogene"

# person2 = Person.new            #have to add person2 in same format as person1
# person2.f_name = "John"
# person2.l_name = "Smith"

# puts person1.f_name
# puts person1.l_name
# puts person2.f_name , person2.l_name  #prints person2.l_name on the next row




# class Person
#     attr_accessor :f_name, :l_name
#     def initialize(f_name = nil, l_name = nil) #initialize method is the constructor that gets called when you create a new instance
#         @f_name = f_name
#         @l_name = l_name
#     end
# end

# person1 = Person.new
# person1.f_name = "Monique"
# person1.l_name = "Theogene"


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



