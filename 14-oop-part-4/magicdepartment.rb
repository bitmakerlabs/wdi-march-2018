require_relative "professor"
require_relative "subjects"


class MagicDepartment < Professor
    include Magic
    
    def initialize(f,lastname)
        super(f,lastname)
    end
    
end