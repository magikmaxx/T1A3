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
    # pushes a new category into the hash
    @category_hash[new_category] = 0
    # category << new_category.capitalize
    puts "Adding new category"
    sleep(2)
    system "clear"
    puts "Your new entry is:"
    puts new_category
    puts "Your new categories are:"
    puts @category_hash.keys
end

#Allows the user to remove category
def remove_category
    puts "Your current categories are:"
    puts @category_hash.keys

    puts "Please enter the category you would like to remove"
    category_remove = gets.chomp.capitalize
    # confirm product deletion
    puts "Would you like to delete this category? (y/n)"
    answer = gets.chomp
    if answer == "y"
      @category_hash.delete(category_remove)
      puts "Deleting: #{category_remove}"
      sleep (2)
      system "clear"
    elsif answer == "n"
      puts "Category not deleted"
      puts "Your categories are:"
      puts category.keys
    else
      puts "invalid option"
    end
    puts @category_hash.keys

end