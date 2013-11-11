# let's put all the students into an array
students = [
	{:name => "Chris", :cohort => :november},
	{:name => "Erica", :cohort =>  :november},
	{:name => "Hannah", :cohort =>  :november},
	{:name => "Simon", :cohort =>  :november},
	{:name => "Ken", :cohort =>  :november},
	{:name => "Nicki", :cohort =>  :november},
	{:name => "Asta", :cohort =>  :november},
	{:name => "G", :cohort =>  :november}
]
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

#nothing happens until we call methods
print_header
print (students)
print_footer (students)