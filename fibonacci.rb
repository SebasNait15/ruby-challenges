# CHALLENGE 8 
#
# Make a function to calculate fibonacci number dependending on how many numbers must have and save in an array
# Problem solved by: Sebastian Ibarra
require_relative 'functions'


def fibonacci(number)

    array = []
    before = 0 
    after = 1

    if number == 0  
        array << before
    else 
        while number > 0 
            
            array << before

            aux = before
            before = after
            after = aux + before

            number -= 1

        end 
    end 

    return array

end 


def main 
    
    array = []
    number = -1
    

    while number < 0
        system('cls') 
        number =  ask_for_integer("Insert a number: ")
        system('cls')
        if number < 0
            puts "Number must natural"
        end 
    end 

    array = fibonacci(number)

    puts "#{array}"

end 

main 