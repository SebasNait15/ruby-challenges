# Challenge 9 
#
# Find the mising number from and array of 1 to 10 
# Develop by: Sebastian Ibarra 
def insert_numbers 
    array = []
    times = 9 
    b1 = b2 = b3 = b4 = b5 = b6 = b7 = b8 = b9 = b10 = true

    # If array has 9 nombers it stop. Also number can't repeat
    while times > 0
        #Number returned most be into 1 to 10
        case rand(1..10)
        when 1
            if b1 == true
                b1 = false
                array << 1
                times -= 1
            end 
        when 2
            if b2 == true
                b2 = false
                array << 2
                times -= 1
            end 
        when 3
            if b3 == true
                b3 = false
                array << 3
                times -= 1
            end 
        when 4
            if b4 == true
                b4 = false
                array << 4
                times -= 1
            end 
        when 5
            if b5 == true
                b5 = false
                array << 5
                times -= 1
            end 
        when 6
            if b6 == true
                b6 = false
                array << 6
                times -= 1
            end 
        when 7
            if b7 == true
                b7 = false
                array << 7
                times -= 1
            end 
        when 8
            if b8 == true
                b8 = false
                array << 8
                times -= 1
            end 
        when 9
            if b9 == true
                b9 = false
                array << 9
                times -= 1
            end 
        when 10
            if b10 == true
                b10 = false
                array << 10
                times -= 1
            end 
        end  

    end 

    return array

end 


def number_missing (array)
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    index = 0
    number = 0 
    number_finded = false
    deleted = false

    while number_finded == false 
        
        if numbers.count() == 1 && index == 10
           
            number_finded = true

        else 

            if array[index] == numbers[number]

                numbers.delete_at(number)
                number = 0
                index += 1 
                
            else

                number += 1
            
            end 
        
        end 
    
    end 

    number = 0
    return numbers[number]

end 

def main 
    array = []
    miss_number = 0

    #Get a random array with our repeated numbers
    array = insert_numbers

    puts "Items from array are: #{array}"

    miss_number = number_missing(array)
    
    puts "Missing number is:  #{miss_number}"

end 

main