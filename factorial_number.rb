# CHALLENGE 4 
#
# Calculate the factorial of a number. this number must be natural
# Solved by: Sebastian Ibarra

require_relative 'functions'

def factorial_number(number, result)
    if number == 0 
        return result
    else 
        result = result * number
        number = number -1
        factorial_number(number, result)
    end 
end

def main 
    number = -1
    result = 1

    while number < 0 
    
        #Ask and white a number
        number = ask_for_integer("Insert a natural number: ")
        
        #Clean screan
        system('cls')
    
        if number < 0 
            puts "Number is not natural, Try again"
        end  
    
    end
    
    result = factorial_number(number, result)
    puts "The factorial of:  #{number} is : #{result}"

end 

main