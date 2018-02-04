# procs have a little more flexability than regular methods
# allow us to store methods as variables, ie closures

# creating a new proc
# that takes two 'arguements?' as seen below
full_name = Proc.new { |first, last| first + " " + last }

# p full_name["Trevor", "Kirpaul"]
# p full_name.call("Rusty", "Shackleford")


greet = Proc.new { |name| puts "Hello, #{name}!" }

# greet["Trevor"]

# greet.call("Rusty")

# alternate way to write a proc
good_bye = Proc.new do |name, num|
  puts "Goodbye, #{name}!!" * num 
end

)
