# 1.
  family = { uncles: ["bob", "joe", "steve"],
             sisters: ["jane", "jill", "beth"],
             brothers: ["frank","rob","david"],
             aunts: ["mary","sally","susan"]
           }
           
  immediate_family = family.select do |k, v|
    k == :sisters || k == :brothers
  end
  
  names = immediate_family.values.flatten
  
  p names
  
# 2. The #merge! mutates the caller, changing it to the result of the merge.
  
  hash1 = { a: 1, b: 2 }
  p "hash1 before merges is #{hash1}"
  hash2 = { a: 5, c: 8 }
  
  p "Result of #merge: #{hash1.merge(hash2)}"
  p "hash1 after #merge is #{hash1}"
  
  p "Result of #merge!: #{hash1.merge!(hash2)}"
  p "hash1 after #merge! is #{hash1}"
  
# 3. using hash1 calculated on the last line of the previous exercise:

  hash1.each do |k, v|
    # versions 1 and 3: print keys
    p k 
    # versions 2 and 3: print values
    p v 
  end
  
# 4. person[:name]

# 5. #has_value?

  p hash1.has_value?(5)
  p hash1.has_value?(3)
  
# 6. 
  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']
            
  sorted_anagrams = {}
            
  words.each do |word|
    sorted = word.split("").sort.join
    sorted_anagrams[sorted] ||= []
    sorted_anagrams[sorted] << word
  end
  
  sorted_anagrams.each_value { |v| p v }
  
# 7. my_hash has the symbol :x as a key. The other one has the string "hi there"
#    as the key.

# 8. B