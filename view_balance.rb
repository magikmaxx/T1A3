require 'colorize'

categories_hash = {
    "Bills" => 100,
    "Utilities" => 150,
    "Groceries" => 200
}

balance = 300

categories_hash.each do |k, v|
    $new_balance = balance - (categories_hash.values.sum)
end

if $new_balance >= 1
    puts "Your current balance is:"
    puts "#{$new_balance}".colorize(:green)
else
    puts "Your current balance is:"
    puts "#{$new_balance}".colorize(:red)
end


