require 'colorize'

def breakdown_of_income_expenses_state
    categories_hash = {
        "Bills" => 100,
        "Utilities" => 150,
        "Groceries" => 200
    }

    balance = 1000

    categories_hash.each do |k, v|
        $new_balance = balance - (categories_hash.values.sum)
    end

categories_hash.each do |k, v|
    puts "#{k}              #{v}".colorize(:red)
end 
end

