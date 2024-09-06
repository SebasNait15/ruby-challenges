#   CHALLENGE 5 
#
#   Draw a tringule of * depending on a number inserted by user. e.g.
#   n= 4
#   *
#   **
#   ***
#   ****
#
#   Solved by: Sebastian Ibarra
require_relative 'functions'

def drawing(colum)
    if colum != 0
        print '*'
        colum = colum - 1
        drawing(colum)
    end  
end

def row(n, row, colum)
    #local variables
    if row <= n 
        colum = row
        drawing(colum)
        puts ' '
        row = row + 1  
        row(n, row, colum)
    end 

end 

def main
    #variables
    n=0
    colum = 1
    row = 1
      
    #validate number is bigger than 0
    while n < 1

        n = ask_for_integer("Insert a number bigger than 0: ")
        system('cls')

        if n < 1
            puts "Number must be bigget than 0. Try again"
        end 
    end 

    row(n, row, colum) 
   
end 

main