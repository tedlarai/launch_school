#1.
  puts "\nExercise 1"
  
  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  arr.each { |n| puts n }
  
#2.
  puts"\nExercise 2"
  
  arr.each { |n| puts n if n > 5 }
  
#3.
  puts"\nExercise 3"
  
  new_arr = arr.select { |n| n.odd? }
  p new_arr
  
#4.
  puts"\nExercise 4"
  
  arr.push(11).unshift(0)
  p arr
  
#5.
  puts"\nExercise 5"
  
  arr.pop
  arr << 3
  p arr
  
#6.
  puts"\nExercise 6"
  
  p arr.uniq!
  
#7. The major difference between arrays and hashes is the indexation, used to
#   access values. In arrays, the indexes are always integers, beginning with 0.
#   In hashes, the indexes, called "keys", can be any object, although it is 
#   common to use symbols.

#8. 
  puts"\nExercise 8"
  
  hash = { a: 1, b: 2 }
  p hash
  hash = { :a => 1, :b => 2 }
  p hash
  
#9. 
  puts"\nExercise 9"
  
  h = {a:1, b:2, c:3, d:4}
  
  p h[:b]
  
  h[:e] = 5
  p h
  
  p h.keep_if { |k,v| v >= 3.5 } 
  
#10.
  puts"\nExercise 10"
  
  p h1 = { a: [1, 2, 3], b: 2 } # hash with an array value
  
  p a1 = [h1, 1, 2] # array with a hash value
  
#11. ruby-doc.org is my favorite reference website concerning either ruby or 
#    rails. This is because when I need clarification about a ruby method, 
#    class or module, I never have to look further than ruby-doc.org. On the
#    other hand, with rails I almost always end having to search my problem on
#    google or stack overflow, with mixed results.


#12.
  puts"\nExercise 12"
  
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  template = [:email, :address, :phone]
  
  contact_data.each_with_index do |contact, index|
    value = template.zip(contact).to_h
    key = contacts.keys[index] # newer versions of ruby, order of the keys is correct
    contacts[key] = value
  end
  
  p contacts
  
#13.
  puts"\nExercise 13"
  
  p contacts["Joe Smith"][:email]
  p contacts["Sally Johnson"][:phone]
  
#14. My solution to exercise 12 does not hard code the transformation, but I 
#    iterate over contact_data, and not contacts.
  puts"\nExercise 14"
  
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  template = [:email, :address, :phone]
  
  contacts.each do |name, info|
    value = template.zip(contact_data.shift).to_h
    info.merge!(value)
  end
  
  p contacts
  
#15.
  puts"\nExercise 15"
  
  arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
  
  arr.delete_if { |word| word.start_with?("s") }
  
  p arr
  
#16.
  puts"\nExercise 16"
  
  a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
  
  a.map! { |expression| expression.split }
  p a.flatten!
     
  
  
#17. "These hashes are the same!"
#    According to ruby-doc.org: "Two hashes are equal if they each contain the 
#    same number of keys and if each key-value pair is equal to (according to 
#    Object#==) the corresponding elements in the other hash."
#    As the order of the elements does not matter, and neither does the notation,
#    we can conclude that hash1 == hash2.