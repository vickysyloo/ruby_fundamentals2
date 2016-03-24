puts "What is your preferred room temperature (in Fahrenheit)?"

fahrenheit = gets.chomp.to_i

def temperature(num)
  new_temperature = ( num - 32 ) * 5/9.0
  new_temperature.round(2)
end

puts "Your temperature is #{temperature(fahrenheit)} in Celsius!"
