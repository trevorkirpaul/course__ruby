# str = "The quick brown fox jumped over the quick dog"

# p str.sub "quick", "slow"

# # replaces the first instance

# p str.gsub "quick", "yellow"

# # global sub, replace all instances

# # using 'gsub!' mutates the str var permenantly

str = "The quick brown fox jumped over the quick dog            "

# p str.strip
# cleans up spaces

puts str.upcase.strip.split(//).size > 20 && "WHAT!"




