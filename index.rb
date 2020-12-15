require "tty-prompt"
$prompt = TTY::Prompt.new

selection = ""

puts "Welcome to FinView, a terminal application that helps you track your finances.
With the help of FinView you are able to document your income and expenses."

def select_option
    return $prompt.select("What would you like to do?",
    ["Make changes to your balance", 
    "View current balance", 
    "View breakdown of income and expenses", 
    "Create or delete a category", 
    "Exit"])
end

while selection != "Exit"
    selection = select_option
    system "clear"
    case selection
    when "Make changes to your balance"
        require_relative ("./income_and_expenses.rb")
    when "View current balance"
        require_relative ("./view_balance.rb")
    when "View breakdown of income and expenses"
        require_relative ("./breakdown_of_income_expenses.rb")
    when "Create or delete a category"
        require_relative ("./edit_category.rb")
    end
end

# def display_menu
#     puts "1. Make changes to current balance"
#     puts "2. View current balance"
#     puts "3. View breakdown of income and expenses"
#     puts "4. Create a new category"
#     puts "5. Exit"
#     puts "Select 1-4"
#     selection = gets.chomp
#     return selection
# end

#Welcome Text


#Menu
# menu_select = ""
# while menu_select !="5"
#     menu_select = display_menu
#     system "clear"
    
#     case menu_select
#     when "1"
#         puts "1 selected"
#         system "clear"
#         #Creates 2 new options
#         #Income 
#         #Expenses
#     when "2"
#         puts "2 selected"
#         #Shows current balance
#     when "3"
#         puts "3 selected"
#         #Shows breakdown of spending
#         #Puts Total income - expense per category
#     when "4" 
#         puts "4 selected"
#         #Creates new category for user
#     when "5"
#         system "clear"
#     else
#         puts "Invalid option"
#     end 
#     puts "press Enter key to continue"
#     gets 
#     system "clear"
# end 