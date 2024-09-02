# CHALLENGE 2 

# PROBLEM
# Identify from a array of numers how many are prime and show them. 
# Solve by Sebastian Ibarra

numbers=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
prime=[]
continue = true
element = 0

#FUNCTIONS 
def insert_numbers(numbers) 

    puts "Insert a number: "
    element = gets.chomp.to_i

    numbers << element

end 

def show_numbers(array)
    puts "Elements are: #{array}"
end 

def is_prime?(numbers, prime)

    for number in numbers do 

        if number == 1 || number == 2 || number == 3 || number == 5 || number == 7
            prime << number
        else 
            if number %2 != 0 && number % 3 != 0 && number % 5 != 0 && number % 7 != 0
                prime << number
            end 
        end 

    end 

end 


#MAIN PROGRAM
while continue == true

    insert_numbers(numbers)
    system("cls")
    
    puts "Do you want to inset other number?\n1 = Yes\n0 =  No"
    element = gets.chomp.to_i

    if element != 1 
        continue = false
    end 

end 

# show_numbers(numbers) 
is_prime?(numbers, prime)
puts "From array prime numbers are: #{prime}"



