require 'colorize'

def view_balance_state
    current_balance = @balance - @category_hash.values.sum
    
    if current_balance >= 0
        puts "Your current balance is:"
        puts "#{current_balance}".colorize(:green)
    else
        puts "Your current balance is:"
        puts "#{current_balance}".colorize(:red)
    end
end


