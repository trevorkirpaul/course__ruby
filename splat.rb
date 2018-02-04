# splat and keyword splat arguments

# def roster player_1, player_2, player_3
#   puts player_1
#   puts player_2
#   puts player_3
# end

# roster "Kurple", "Gjango", "React"


# def roster *players
#     p players
# end

# roster "React", "Angular", "Ruby", "Sinatra" # => ["React", "Angular", ect...]
# if we used puts, # => "React" "Angular"


# ---------------------------------------------

# using 2 '*' and we can pass a 'hash', then iterate using key, values

# def roster *players_with_positions
#   players_with_positions.each do |player, postion|
#     puts "Player: #{player}"
#     puts "Position: #{postion}"
#     puts "\n"
#   end
# end

# data = {
#   "Altuve": "2nd Base",
#   "Alex Bregman": "3rd Base",
#   "Evan Gattis": "Catcher",
#   "George Springer": "OF"
# }

# roster data

# ---------------------------------------------

# optional arguements w/ hash synstax

# create empty hash where we put things in using named argument syntax
def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options [:something_else]
end

invoice company: "Google", total: 100.0, state: "Trevor"

# warning: can lead to silent bugs if you use incorrect names
# or you forgot to pass an argument