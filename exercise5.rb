# let's put all the students into an array
students = {:name => "", :cohort => :november}

def print_header
	puts "the students of my cohort at makers academy"
	puts "--------------"
end

def print(students) 
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)	
	puts "overall we have #{names.length} great students"
end

def input_students
  puts "please enter the names of the students"
  puts "to finish hit return twice"
students=[]
name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
while !name.empty? do
  students << {:name => name, :cohort => :november}
  if students.length <= 4
  puts "now we have #{students.length} students"
else puts "sorry we are full"
end  
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
end
  students
end
#nothing happens until we call methods
students = input_students
print_header
print (students)
print_footer (students)