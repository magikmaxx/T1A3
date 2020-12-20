require "colorize"

def current_categories (category)
    puts "Your current categories are:"
    puts category
end

  # Allows the user to add category
def add_category
    puts "Your current categories are:"
    puts @category_hash.keys

    puts "Enter the name of new category"
    new_category = gets.chomp.capitalize
    if new_category.length > 9
      puts "Limit of 9 characters please".colorize(:blue)
      return add_category
    elsif new_category.length < 3
      puts "Please enter a category with more characters".colorize(:blue)
      return add_category
    end
    # pushes a new category into the hash
    @category_hash[new_category] = 0
    # category << new_category.capitalize
    puts "Adding new category"
    sleep(2)
    system "clear"
    puts "Your new entry is:"
    puts new_category.colorize(:cyan)
    puts "Your categories are:"
    puts @category_hash.keys
end

#Allows the user to remove category
def remove_category
    categories = @category_hash.keys
    puts "Your current categories are:"
    puts categories

    puts "Please enter the category you would like to remove"
    @category_remove = gets.chomp.capitalize
    # confirm product deletion
    category = categories.find { |category| category == @category_remove }
    if category
      puts "Your selected category is #{@category_remove}"
      confirm_deletion
    else
      system "clear"
      puts "Category does not exist".colorize(:cyan)
      return remove_category
    end
end

def confirm_deletion  
    puts "Would you like to delete this category? (y/n)"
    answer = gets.chomp
    if answer == "y"
      @category_hash.delete(@category_remove)
      puts "Deleting: #{@category_remove}"
      sleep (2)
      system "clear"
    elsif answer == "n"
      puts "Category not deleted".colorize(:cyan)
      puts "Your categories are:"
    else
      puts "invalid option"
      return confirm_deletion
    end
    puts "Your new categories are:"
    puts @category_hash.keys
end

