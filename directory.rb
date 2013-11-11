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
# and then print them
puts "The students of my cohort at Makers Academy"
puts "-------------"
students.each do |student|
	puts student
end
# finally, we print the total
puts "Overall, we have #{students.length} great students"