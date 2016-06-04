
# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
new_array = []
p new_array

# Add five items to your array. Print the array.
new_array.push("Italian Roast", "Gold Coast", "Veranda Blend", "Pike Place Roast")
p new_array

# Delete the item at index 2.  Print the array.
new_array.delete_at(2)
p new_array

# Insert a new item at index 2.  Print the array.
new_array.insert(2, "French Roast")
p new_array

# Remove the first item of the array without having to refer to its index. Print the array.
new_array.shift
p new_array

# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
puts "It is #{new_array.include?("French Roast")} that the array includes French Roast."

# Initialize another array that already has a few items in it.
newer_array = ["Guatemala Antigua", "Cafe Verona", "Willow Blend"]

# Add the two arrays together and store them in a new variable.  Print the new array.
coffee_lineup = new_array + newer_array
p coffee_lineup