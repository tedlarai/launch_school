puts "Enter a number between 0 and 100."
n = gets.chomp.to_i

if n < 0 || n > 100
  puts "You should have entered a number between 0 and 100."
elsif n <= 50
  puts "#{n} is between 0 and 50"
else 
  puts "#{n} is between 51 and 100"
end