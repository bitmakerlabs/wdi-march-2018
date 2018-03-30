require_relative "professor"
require_relative "subjects"

class ScienceDepartment < Professor
    
    include Science

    def initialize(f,lastname)
        super(f,lastname)
    end
end