# 1.  The #each method returns the array on which the method was called.

# 2.  
    loop do
        puts 'What do you want me to do?' 
        input = gets.chomp
        puts "OK, I will do it!"
        break if input == 'STOP'
    end
    
# 3.  
    squares = [0, 1, 4, 9, 16, 25]
    squares.each_with_index do |square, index|
        puts "The square of #{index} is #{square}"
    end
        
# 4.  
    def countdown(number)
        puts number
        countdown(number - 1) if number > 0
    end
    
    countdown(30)
    countdown(0)
    countdown(-4)

