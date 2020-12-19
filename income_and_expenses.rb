def expenses
    categories = @category_hash.keys

    puts "Type in the category you would like add expenses to"
    puts categories
    chosen_category = gets.chomp.capitalize

    category = categories.find { |category| category == chosen_category }
    if category
      puts "What amount?"
      expense_amount = gets.chomp.to_i
      @category_hash[category] += expense_amount
    else
      system "clear"
      puts "Category does not exist".colorize(:cyan)
      return expenses
    end
    puts "#{expense_amount} has been added to #{chosen_category}"
  end

def income
    puts "Please enter your income"
    @balance += gets.chomp.to_i
    puts "Your added income is #{@balance}"
end