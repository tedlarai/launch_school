# 1.
  arr = [1,3,5,7,9,11]

  def is_in_array?(number, array)
    puts "#{array.include?(number)}"
  end

  is_in_array?(2, arr)
  is_in_array?(11, arr)

# 2.1. => 1; array: [[b], [b, 2], [b, 3], [a, 1], [a, 2], [a, 3]]
# 2.2. => [1,2,3]; array: [[b], [a, [1, 2, 3]]]

# 3. print array[1][0]

# 4.1 3
# 4.2 error
# 4.3 8

# 5. a = "e"; b = "A"; c = nil

# 6. In the example, the [] method was used with a string as argument, instead 
#    of an integer. A possible solution would be use the index 3 as the argument.
#    names[3] = 'jody'


# 7.
  original = [2, 1, 8, 18, 2]
  mapped = original.map { |x| x + 2 } 

  p original, mapped