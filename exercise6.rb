# making grocery list

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

# 1 present list as an item on each line

def print(list)
  list.each do |item|
    puts "*#{item}"
  end
end

print(grocery_list)

# 1 repeated

grocery_list << "rice"

print(grocery_list)

# 2 output total number on list

puts grocery_list.length

# 3 checking for bananas
if grocery_list.include?("bananas")
  puts "You need to pick up bananas."
else
  puts "You don't need to pick up bananas today."
end

# 4 display the second item on the list

puts grocery_list[1]

# 5 sort list alphabetically

print(grocery_list.sort)

# 6 remove salmon

grocery_list.delete("salmon")

print(grocery_list)
