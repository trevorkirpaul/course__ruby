# # # modern syntax for creating
# # positions = { 
# #   first_base: "Chris Carter",
# #   second_base: "Jose Altuve",
# #   short_stop: "Carlos Correa"
# # }

# # # original ruby syntaxt used positions = { "first_base" => "Chris Carter" }
# # # also postions = { :first_base => "Chris Carter" }

# # puts positions[:short_stop] # => Carlos Correa

# people = { jordan: 32, tiffany: 27, kristine: 10, heather: 29  }

# # people.delete(:kristine)

# people.each_key do |k|
#   puts k
# end

# people.each_value do |v|
#   puts v
# end

# people.each do |name, age|
#   puts "Hello, #{name}! You are #{age} years old!"
# end

people = { jordan: 32, tiffany: 27, kristine: 10, heather: 29  }

people[:trevor] = 30 # adds :trevor => 30 to people

# people_2 = people.invert # => swaps keys with values

# p people_2.merge(people) # => combined to 1 hash

# p people_2.to_a # => converts to array

# p people.keys # => creates array of keys
# p people.values # +> creates array of values