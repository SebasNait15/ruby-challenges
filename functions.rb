#Allow put text and inserting a string 
def ask_for_string(string)
    puts string
    scan = gets.chomp.to_s
    return scan
end 

#Allow to insert text for user about what to insert and scan a integer
def ask_for_integer(string)
    puts string
    scan = gets.chomp.to_i
    return scan
end


#Separate digits from a number and puts in into array
def integer_to_array (number)
    array = []
    number
    lenght_number = number.abs.digits.length

    while lenght_number != 0
        
        array << number / (10 ** (lenght_number - 1))
        number = number % (10 ** (lenght_number - 1))

        lenght_number -= 1

    end 

    return array

end 