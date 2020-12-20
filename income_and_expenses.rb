def expenses
    expense_amount = nil
    categories = @category_hash.keys

    puts "Type in the category you would like add expenses to"
    puts categories
    chosen_category = gets.chomp.capitalize

    category = categories.find { |category| category == chosen_category }
    if category
      while expense_amount.nil? do
      puts "What amount?".colorize(:blue)
      expense_amount = Integer(gets.chomp) rescue nil
      end
      @category_hash[category] += expense_amount
    else
      system "clear"
      puts "Category does not exist".colorize(:cyan)
      return expenses
    end
    puts "#{expense_amount} has been added to #{chosen_category}"
  end

def income
    input_balance = nil
    while input_balance.nil? do
    puts "Please enter your income".colorize(:blue)
    input_balance = Integer(gets.chomp) rescue nil
    end
    @balance += input_balance
    puts "Your added income is #{@balance}".colorize(:blue)
end
