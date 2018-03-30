require_relative "person"

class Professor < Person
    
    def initialize(f,lastname)
        super(f,lastname)
    end

    def fullname
        "Prof. #{@firstname} #{@lastname}"
    end

    def teach(student)
        student.learn
    end

    def teachCohort(students)
        students.each {|s| s.learn}
    end

    def marks(students)
        finalgrade(students)
    end

    private

    def finalgrade(students)
        students.each do |s|
            if s.level > 5
                s.finalmark(5)
            end
        end
    end

    
end

# snape = Professor.new("Severus","Snape")
# p snape.fullname