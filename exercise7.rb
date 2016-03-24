def display_classes(group)
  group.each do |cohort, number|
    puts "#{cohort}: #{number} students"
  end
end

#1 create hash
students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

#2 method that displays name and number of students for each cohort
display_classes(students)

#3 add cohort 4
students[:cohort4] = 43

#4 keys method to output all cohort names
puts students.keys

#5 expanded cohort size 5% for each class
students.each do |cohort_name, number_of_students|
  students[cohort_name] = number_of_students * 1.05
end

display_classes(students)

#6 delete second cohort and redisplay hash
students.delete(:cohort2)

display_classes(students)

#7 bonus - total number of students across all cohorts
# Normal way
total = 0
students.values.each do |number_of_students|
  total += number_of_students
end

# Long way using inject
total = students.values.inject(0) {|sum, value| sum += value }

# Short way with inject
total = students.values.inject(:+)


puts "Total number of students #{total}"
