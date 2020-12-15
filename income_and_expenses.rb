require "tty-prompt"
$prompt = TTY::Prompt.new

def expenses
    categories_hash = {
        :Bills => 0,
        :Utilities => 0,
        :Groceries => 0
    }

puts "Type in the category you would like add expenses to"
puts categories_hash.keys
chosen_category = gets.chomp.capitalize

if chosen_category == "Bills"
    puts "What amount?"
    expense_amount = gets.chomp
    categories_hash = expense_amount
end
puts "Your expenses for #{:Bills} has included the amount of #{expense_amount}"
end


def income
    puts "Please enter your income"
    balance = gets.chomp.to_i
    puts "Your added income is #{balance}"
end

income_expense_selection = ""
def income_and_expenses_menu
    return $prompt.select("What would you like to do?",
    ["Add Income",
    "Deduct Expenses",
    "Return to Main Menu"])
end

while income_expense_selection != "Return to Main Menu"
    income_expense_selection = income_and_expenses_menu
    system "clear"
    case income_expense_selection
    when "Add Income"
        income
    when "Deduct Expenses"
        expenses
    end
end




