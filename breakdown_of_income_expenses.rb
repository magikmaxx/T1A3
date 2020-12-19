require 'colorize'

def breakdown_of_income_expenses_state
    categories_hash = {
        "Bills    " => 100,
        "Utilities" => 150,
        "Groceries" => 200
    }

    balance = 0

    categories_hash.each do |k, v|
        $new_balance = balance - (categories_hash.values.sum)
        end

    if balance > 0 
        puts "Your balance:          #{balance}".colorize(:green)
    else
        puts "Your balance:          #{balance}".colorize(:red)
    end    
    categories_hash.each do |category_key, category_value|
        puts "#{category_key}              #{category_value}".colorize(:red)
        end 
    if $new_balance > 0
        puts "Your new balance:      #{$new_balance}".colorize(:green)
    else 
        puts "Your balance:          #{$new_balance}".colorize(:red)
    end
end