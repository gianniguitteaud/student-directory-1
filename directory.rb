# let's put all the students into an array
students = [
	"Chris"
	"Erika"
	"Hannah"
	"Simon"
	"Ken"
	"Asta"
	"G"
]
def print_header
	puts "the students of my cohort at makers academy"
	puts "--------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "overall we have #{names.length} great students"
end

#nothing happens until we call methods
print_header
print (students)
print_footer (students)