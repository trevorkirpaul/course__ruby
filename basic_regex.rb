string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

# p string =~ /quick/ # => 4
# returs 4 bc 'quick' is at index value of 4

p string =~ /Z/ ? "Valid" : "Invalid" # => "Invalid"
#  case sensitive

p string =~ /Z/i ? "Valid" : "Invalid" # => "Valid"
#  using 'i' makes it case insensitive


# --return all matches that are integers
# \d searches for int, '+' searches for multiple instances

p string.to_enum(:scan, /\d+/).map { Regexp.last_match } 

# => [#<MatchData "12">, #<MatchData "10">]



