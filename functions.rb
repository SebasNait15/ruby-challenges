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
