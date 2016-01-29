# 1.
  words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
  
  words.each do |word|
    p word if word =~ /lab/
  end
  
# 2. The program will print nothing, since the block was not called. It will 
#    return the block in the form of a Proc object.

# 3. Exception handling, as the name suggests, handle exceptions, preventing the 
#    crashing of the application. It provides the program with a way to cope 
#    with unexpected problems occurring during runtime.

# 4. 
  def execute(&block)
    block.call
  end

  execute { puts "Hello from inside the execute method!" }
  
# 5. Because the line "def execute(block)", makes the method expect an argument 
#    named 'block', and when the method was called no such argument was given.
#    the problem could be solved with the insertion of the '&' character before
#    'block' in the method definition.