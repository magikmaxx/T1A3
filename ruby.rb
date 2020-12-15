require "tty-prompt"
$prompt = TTY::Prompt.new

# Allows the user to add category
def add_category (category)
    puts "Enter the name of new category"
    new_category = gets.chomp
    #For Array: pushes a new category into the last slot of an array.
    category << new_category.capitalize
    puts "Loading new category"
    sleep (2)
    system "clear"
    puts "Your new entry is:"
    puts new_category.capitalize
    puts "Your categories are:"
    puts category
end

#Allows the user to remove category
def remove_category (category)
    puts "Please enter the category you would like to remove"
    category_remove = gets.chomp.capitalize
    #confirm product deletion
    puts "Would you like to delete this category?"
    answer = gets.chomp
    
    if answer == "y"
        category.delete(category_remove)
        puts "Deleting: #{category_remove}"
        sleep (2)
    else
        puts "Category not deleted"
        puts "Your categories are:"
        puts category
    end
    puts category
end

def add_or_remove_menu
    return $prompt.select("What would you like to do?",
        ["Add category",
        "Remove category",
        "Return to Main Menu"])
end

category = ["Bills", "Utilities", "Groceries"]

add_remove_selection = ""
while add_remove_selection != "Return to Main Menu"
    add_remove_selection = add_or_remove_menu
    system "clear"
    case add_remove_selection
    when "Add category"
        add_category (category)
    when "Remove category"
        remove_category (category)
    end
end