require_relative "person"
require_relative "professor"
require_relative "student"
require_relative "magicdepartment"
require_relative "sciencedepartment"

snape = MagicDepartment.new("Severus","Snape")

tesla = ScienceDepartment.new("Nicola","Tesla")

value = "wave"
tesla.light(value)

def display(students)
    students.each { |s| p"#{s.fullname} knowledge level #{s.level}"}
end

p snape.spell
p snape.herbology


stewie = Student.new("stewie","Griffin")
peter = Student.new("peter","Griffin")
meg = Student.new("meg","Griffin")
lois = Student.new("lois","Griffin")
chris= Student.new("chris","Griffin")

# p stewie.spell
# p stewie.herbology




students = []
students << stewie
students << peter
students << meg
students << lois
students << chris

display(students)

snape.teachCohort(students)

snape.teach(stewie)
snape.teach(stewie)



stewie.slack
stewie.slack
stewie.slack
stewie.slack
stewie.slack

puts 

display(students)


snape.marks(students)
p "____________________________"
puts

display(students)




# p stewie
# snape.teach(stewie)

# p stewie+==____________