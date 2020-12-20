def expenses
    expense_amount = nil
    categories = @category_hash.keys

    puts "Type in the category you would like add expenses to"
    puts categories
    puts "Type category below:"
    chosen_category = gets.chomp.capitalize

    category = categories.find { |category| category == chosen_category }
    if category
      while expense_amount.nil? do
      puts "What amount?".colorize(:light_blue)
      expense_amount = Integer(gets.chomp) rescue nil
      end
      @category_hash[category] += expense_amount
    else
      system "clear"
      puts "Category does not exist".colorize(:cyan)
      return expenses
    end
    puts "#{expense_amount} has been added to #{chosen_category}".colorize(:green)
  end

def income
    input_balance = nil
    while input_balance.nil? do
    puts "Please enter your income".colorize(:light_blue)
    input_balance = Integer(gets.chomp) rescue nil
    end
    @balance += input_balance
    puts "Your added income is #{@balance}".colorize(:green)
end
