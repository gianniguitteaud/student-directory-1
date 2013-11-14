# let's put all the students into an array
students = [
	{:name => "Chris", :cohort => :november},
	{:name => "Erica", :cohort =>  :november},
	{:name => "Hannah", :cohort =>  :november},
	{:name => "Simon", :cohort =>  :november},
	{:name => "Ken", :cohort =>  :november},
	{:name => "Nicki", :cohort =>  :november},
	{:name => "Asta", :cohort =>  :november},
	{:name => "G", :cohort =>  :november},
  {:name => "Tom", :cohort =>  :november},
  {:name => "Kumi", :cohort =>  :november}
]
def print_header
	puts "the students of my cohort at makers academy"
	puts "--------------"
end

def print(students) 
	students.each do |student|
        if student[:name].length >= ruby 8
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
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
  puts "now we have #{students.length} students"
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
end
  students
end
#nothing happens until we call methods
students = input_students
print_header
print(students)
print_footer(students)