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
    puts "Your balance:            #{balance}".colorize(:green)
    puts "#{:Bills}                    #{100}".colorize(:red)
    puts "#{:Utilities}                #{150}".colorize(:red)
    puts "#{:Groceries}                #{200}".colorize(:red)
    puts "Your current balance is: #{$new_balance}"
end

