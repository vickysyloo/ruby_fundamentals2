# ORIGINAL ATTEMPT WITH AMENDMENTS






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





# NEW PRACTICE ATTEMPT


# 1 creating hash list

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

# 2 create a method displaying name and number of students for each cohort

def print_all_cohorts(students)
  students.each do |cohort, num_of_students|
    puts "#{cohort}: #{num_of_students} students"
  end
end

print_all_cohorts(students)

# 3 add cohort 4, with 43 students

students[:cohort4] = 43

puts students[:cohort4] #doing this to double check

# 4 use keys method to output all cohort names

puts students.keys

# 5 expand each cohort size by 5% and display new results

students.each do |cohort, num_of_students|
  students[cohort] = (num_of_students * 1.05).to_i
end

# have to do it this way because it permanently changes the total number of the original hash

puts print_all_cohorts(students)

# 6 delete the 2nd cohort and redisplay

students.delete(:cohort2)

print_all_cohorts(students)

# 7 calculate total number of students of all cohorts using each

total = 0

students.values.each do |num_of_students|
  total += num_of_students
end

puts total
