def display_classes(group)
  group.each do |cohort, number|
    puts "#{cohort}: #{number} students"
  end
end

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

display_classes(students)

students[:cohort4] = 43

puts students.keys

students.each do |cohort_name, number_of_students|
  students[cohort_name] = number_of_students * 1.05
end

display_classes(students)

students.delete(:cohort2)

display_classes(students)

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
