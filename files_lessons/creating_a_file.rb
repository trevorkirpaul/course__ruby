# file options
# r - reading
# a - appending to a file
# w - just writing
# w+ - reading and writing
# a+ - open a file for reading and appending
# r+ - open a file for updating, both reading and writing


# --- creating ---
# File.open("files_lessons/teams.txt", 'w+') { |f| f.write("Twins, Astros, Mets, Yankees") }

# --- using a variable to create file ---
file_to_save = File.new("files_lessons/other_teams.txt", 'w+')
file_to_save.puts("As, Diamondbacks, Mariners, Marlins")
file_to_save.close


teams_one = File.read("files_lessons/teams.txt")
teams_two = File.read("files_lessons/other_teams.txt").chomp # I used chomp bc \n
# p teams # => prints contents

teams_master = teams_one.split(', ') + teams_two.split(', ')

teams_master.each do |team|
  p team.upcase
end
