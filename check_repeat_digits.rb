# CHALLENGE 7
#
# Make a program that identify if a number has the same number in all number. 

require_relative 'functions'

def repeted_numbers (array)

    digit = array[0]
    continue = true

    for index in array do
        if index != digit
            continue =  false
        end 
    end

    return continue

end 


def main 
    
    numbers = []
    number = 0
    lenght_number = 0
    


    number =  ask_for_integer("Insert a number: ")

    numbers = integer_to_array(number)

    if repeted_numbers(numbers) ==  true
        puts "The number is made from a same number repeated"
    else
        puts "The number is not made from a same number repeated"
    end 

end 

main