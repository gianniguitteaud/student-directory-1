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

def capitalize_all_words(string)
  string.split(' ').map {|word| word.capitalize }.join(' ')  
end

def capitalized_input
  capitalize_all_words(gets.chomp)
end

def print_input_students_message
  puts "please enter the names of the students and there cohort"
  puts "hit return. To finish hit return twice"  
end

def add_student_to_list(students, name, cohort)
    students << {:name => name, :cohort => cohort}
    puts "now we have #{students.length} students"
end

def input_students
  print_input_students_message
  students = []
  loop do
    name, cohort = capitalized_input, capitalized_input    
    break if name.empty?
    add_student_to_list(students, name, cohort)
  end
  students
end
#nothing happens until we call methods
students = input_students
print_header
print (students)
print_footer (students)