# # i = 0

# # while i < 10
# #   puts "Hey there #{i}"
# #   i += 1
# # end

# arr = [23, 43, 543, 64, 768, 65]

# # arr.each do |i|
# #   p i
# # end

# # arr.each { |i| p i } 

# # ^ both the same output

# for i in 0..42
#   p i
# end

teams = {
  "Houston Astros" => {
    "first base" => "Chris Carter",
    "second base" => "Bill Carter",
    "third base" => "Rob Carter",
  },
  "Texas Rangers" => {
    "first base" => "Chris Jackson",
    "second base" => "Bill Jackson",
    "third base" => "Rob Jackson",
  }
}

# teams.each do |team|
#   p team
# end # => prints with '{}' stuff

# teams.each do |team, players|
#   puts team
#   players.each do |position, player|
#     p "#{player} starts at #{position}"
#   end
# end # => using nested loop looks more ledgible
