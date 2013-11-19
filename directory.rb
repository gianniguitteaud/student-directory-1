# let's put all the students into an arrayn
students = []
def print_header
	puts "the students of my cohort at makers academy"
	puts "--------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)".center(80)
	end
end

def print_footer(names)	
	puts "overall we have #{names.length} great students"
end

def input_students
  puts "please enter the names of the students and there cohort"
  puts "hit return. To finish hit return twice"
  students=[]
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
while !name.empty? do
  students << {:name => name, :cohort => cohort}
  puts "now we have #{students.length} students"
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
  cohort = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
end
  students
end
#nothing happens until we call methods
students = input_students
print_header
print (students)
print_footer (students)