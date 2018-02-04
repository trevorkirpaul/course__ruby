# given an array of integers
# only grab even integers

# (1..10).to_a.select do |x|
#   if x.even?
#     puts x
#   end
# end

# p (1..10).to_a.select(&:even?)

# puttin an '&' in front of symbol, able to skip syntax
# allows you to pass 'even?' to each value in given array


# pokememon = [
#   "Pikachu",
#   "Charmander",
#   "Bulbasaur",
#   "MewTwo"
# ]

# pokememon.each do |pokemon|
#   puts "#{pokemon} is awesome!"
# end


# sentence = "This is an amazing and super long terrible dinosaur trevor sentece"

# # '%w converts each word in sentence to an array

# arr = %w(This is an amazing and super long terrible dinosaur trevor sentece)

# puts arr.select { |x| x.length > 6 }


# -----------------------------------
# using regex
# p %w(f s g l u i u t h k o j g a).select { |v| v=~ /[aeiou]/}