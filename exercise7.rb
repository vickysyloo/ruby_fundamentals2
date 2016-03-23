def display_classes (group)
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

students[:cohort4] = "43"

puts students.keys

students.each do |cohort, number|
  puts "#{number * 1.5}"
end

students.delete(:cohort2)

display_classes(students)
