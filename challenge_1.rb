# PROBLEM 
#
# Given a array of n number count how many item bigger than 5
# Program made by: Sebastian Ibarra

#variables
array=[]
bigger=[]
continue = true

#Insert numbers loop
while continue == true 

    #Ask to user of numbers
    puts "Insert a number: "
    item = gets.chomp.to_i

    #Item is added to array
    array << item

    system("cls")

    puts "Do you wanna add other number?\n1 = Yes\n0= No"
    if gets.chomp.to_i == 0 
        continue = false
    end 

    system("cls")
    #If user dont want to insert more numbers cicle ends

end

puts "You inserted the nombers: #{array}"

for i in array do
    if i > 5 
        bigger << i
    end 
end 

puts "Numbers bigger than 5 you inserted are: #{bigger}"