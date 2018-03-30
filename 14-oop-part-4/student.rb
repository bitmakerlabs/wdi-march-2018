require_relative "person"
require_relative "professor"

class Student < Person

    Level = 0

    def initialize(f,lastname)
        super(f,lastname)
        @knowledge_level = Level
    end

    def level
        @knowledge_level
    end

    def learn
        @knowledge_level = @knowledge_level +10
    end

    def slack
        @knowledge_level -= 5 if @knowledge_level > 0
    end

    def finalmark(grade)
        @knowledge_level = @knowledge_level + grade
    end

end

