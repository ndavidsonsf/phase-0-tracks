# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # initialize hash
  # break user input into individual items
  # add individual items into the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items)
  grocery_list = {}
  item_array = items.split(" ")
  item_array.each do |item|
    grocery_list[item] = 1
  end
  print_list(grocery_list)
  grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # Get item name from user
  # Ask for quanity; allow user to skip
  # If qty is not given, use default qty
  # add item and qty to the hash
# output: print list to console

def add_item(item, item_qty, grocery_list)
  grocery_list[item] = item_qty
  # print_list(grocery_list)
  grocery_list
end

# Method to remove an item from the list
# input: item name
# steps: 
  # get item name from user
  # remove that item from list (including qty)
# output: updated list

def remove_item(item, grocery_list)
  grocery_list.delete(item)
  # print_list(grocery_list)
  grocery_list
end

# Method to update the quantity of an item
# input: item name
# steps:
  # get item name from user
  # get new qty
  # update qty
# output: updated list

def update_qty(item, item_qty, grocery_list)
  grocery_list[item] = item_qty
  # print_list(grocery_list)
  grocery_list
end

# Method to print a list and make it look pretty
# input: list name
# steps:
  # print the list - with each item and qty on seperate lines
  # use '-' or ':' between item and qty
# output: printed list to console

def print_list(grocery_list)
  grocery_list.each do |item, qty|
    p "#{item}: #{qty}"
  end
end

#grocery_list = create_list("milk")
#grocery_list = remove_item("milk", grocery_list)

grocery_list = create_list("")
grocery_list = add_item("lemonade", 2, grocery_list)
grocery_list = add_item("tomatoes", 3, grocery_list)
grocery_list = add_item("onions", 1, grocery_list)
grocery_list = add_item("ice cream", 4, grocery_list)
grocery_list = remove_item("lemonade", grocery_list)
grocery_list = update_qty"ice cream", 1, grocery_list
print_list(grocery_list)


# grocery_list = add_item("bananas", 2, grocery_list)
# remove_item("carrots", grocery_list)
# update_qty("cereal", 10, grocery_list)