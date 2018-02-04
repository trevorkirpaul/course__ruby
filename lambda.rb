# also like procs
first_name = lambda { |first, last| first + " " + last }

p first_name["Trevor","Kirpaul"] # => prints "Trevor Kirpaul"

# shorthand version
last_name = ->(first, last) { first + " " + last }

p last_name["Trevor", "Kirpaul"] # => prints "Trevor Kirpaul"


------------------------------------------------

# Differences between procs and lambdas

# lambdas count arguments passed to them, procs do not

full_name = lambda {|first, last| first + " " + last}

p full_name.call("Trevor", "Kristopher", "Kirpaul") # => error

full_name_proc = Proc.new { |first, last| first + " " + last }

p full_name_proc["Trevor", "Kristoper", "Kirpaul"] # => "Trevor Kristopher"



# return behavior

def my_method_lamb
  x = lambda { return }
  x.call
  p "Text from within method"
end

# my_method # => "Text from within method"

def my_method
  x = Proc.new { return }
  x.call
  p "Text from within method"
end

# my_method # => returns nil 
# bc Proc is exiting


