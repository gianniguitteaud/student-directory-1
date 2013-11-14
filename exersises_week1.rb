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
  print "the students of my cohort at makers academy\n"
  print "--------------\n"
end

def display(students) 
  students.each_with_index do |student, index|
    print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)\n"
  end
end

def print_footer(names) 
  if names.length == 1
    print "overall we have #{names.length} great student\n"
  else
    print "overall we have #{names.length} great students\n"
  end
end

def input_students
  print "please enter the names of the students\n"
  print "to finish hit return twice\n"
students=[]
name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
while !name.empty? do
  students << {:name => name, :cohort => :november}
  print "now we have #{students.length} students\n"
  name = gets.chomp.split(' ').map {|word| word.capitalize }.join(' ')
end
  students
end
#nothing happens until we call methods
students = input_students
print_header
display(students)
print_footer(students)