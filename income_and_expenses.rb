def expenses
    categories_hash = {
        "Bills" => 0,
        "Utilities" => 0,
        "Groceries" => 0
    }

    puts "Type in the category you would like add expenses to"
    puts categories_hash.keys
    chosen_category = gets.chomp.capitalize

    if chosen_category == "Bills"
        puts "What amount?"
        expense_amount = gets.chomp.to_i
        categories_hash = expense_amount
    end
    puts "#{expense_amount} has been added to #{:Bills}"
end

$balance = 0
def income
    puts "Please enter your income"
    $balance += gets.chomp.to_i
    puts "Your added income is #{$balance}"
end