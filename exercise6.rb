grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

grocery_list.each do |produce|
  puts "* #{produce}"
end

grocery_list << "rice"
# => ["carrots", "toilet paper", "apples", "salmon", "rice"]

grocery_list

grocery_list.length # => 5

if grocery_list.include?("bananas")
  puts "You need to pick up bananas."
else
  puts "You don't need to pick up bananas today."
end

# => You don't need to pick up bananas today

grocery_list[1] # => toilet paper

grocery_list.sort("*")
