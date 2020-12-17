require "tty-prompt"
require "tty-font"
require_relative ("./income_and_expenses.rb")
require_relative ("./edit_category.rb")
require_relative ("./breakdown_of_income_expenses.rb")
require_relative ("./view_balance.rb")

$prompt = TTY::Prompt.new
font = TTY::Font.new(:starwars)

puts font.write("FinView")
puts "Welcome to FinView, a terminal application that helps you track your finances.
With the help of FinView you are able to document your income and expenses."
#Selection options for main menu
# selection = ""
def main_menu
    return $prompt.select("What would you like to do?",
    ["Make changes to your balance",
    "View current balance",
    "View breakdown of income and expenses",
    "Create or delete a category",
    "Exit"])
end
# selection options for income and expenses menu
income_expense_selection = ""
def income_and_expenses_menu
    return $prompt.select("What would you like to do?",
    ["Add Income",
    "Deduct Expenses",
    "Return to Main Menu"])
end
#Selection options for category menu
add_remove_selection = ""
def add_or_remove_menu
    return $prompt.select("What would you like to do?",
        ["Add category",
        "Remove category",
        "Return to Main Menu"])
end

#Menu options for adding income and deducting expenses
def income_and_expenses_state
    income_expense_selection= ""
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
end

#While loop menu for adding or removing category
def add_remove_selection_state
    add_remove_selection=""
    while add_remove_selection != "Return to Main Menu"
        add_remove_selection = add_or_remove_menu
        system "clear"
        case add_remove_selection
        when "Add category"
            add_category ($category)
        when "Remove category"
            remove_category ($category)
        end
    end
end

#Main Menu selection
selection = ""
while selection != "Exit"
    selection = main_menu
    system "clear"
    case selection
    when "Make changes to your balance"
        income_and_expenses_state
    when "View current balance"
        view_balance_state
    when "View breakdown of income and expenses"
        breakdown_of_income_expenses_state
    when "Create or delete a category"
       add_remove_selection_state
    end
end
