# Challenge 3

# From an array of number, identify prime numbers and calculate sum of them. 
# Develop by: Sebastian Ibarra 
require_relative 'functions'


def identify_prime (array)
    prime=[]
    
    for item in array do 
        if item == 2
            prime << item
        else 
            if item % 2 != 0 
                if item < 8 && item > 0 
                    prime << item
                else 
                    if item % 3 != 0 && item % 5 != 0 && item % 7 != 0
                        prime << item
                    end 
                end 
            end 
        end 
    end 
    
    return prime

end 

def sum_items (array)

    result = 0
    for index in array do 
        result = result + index
    end

    return result
end 


def insert_numbers 
    return ask_for_integer("Insert an integer number: ")
end 


def main 
    
    numbers=[]
    continue = true
    
    while continue == true 

        numbers << insert_numbers
        system('cls')

        puts "Do you want to insert other number?\n1 = Yes\nAny key = No"
        if gets.chomp.to_i == 0
            continue = false
        end 
        system('cls')

    end 

    puts "#{numbers}"
    numbers = identify_prime(numbers)
    puts "#{numbers}"
    numbers = sum_items(numbers)
    puts "The result of sum of prime number is: #{numbers}"

end 

main