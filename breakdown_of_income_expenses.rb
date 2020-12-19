require 'colorize'

def breakdown_of_income_expenses_state
    current_balance = @balance - (@category_hash.values.sum)

    if @balance >= 0
      puts "Your balance:          #{@balance}".colorize(:green)
    else
      puts "Your balance:          #{@balance}".colorize(:red)
    end

    @category_hash.each do |category_key, category_value|
      puts "#{category_key}              #{category_value}".colorize(:red)
    end

    if current_balance >= 0
      puts "Your new balance:      #{current_balance}".colorize(:green)
    else
      puts "Your balance:          #{current_balance}".colorize(:red)
    end
  end