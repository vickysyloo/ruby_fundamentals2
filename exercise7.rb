def student_data(year)
  students.each do |cohort, number|
  puts "#{cohort}: #{number} students"
  end
end


students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}


students[:cohort4] = "43"
