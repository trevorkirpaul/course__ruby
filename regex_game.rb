starting_sentence = "Hi from matching land"
sentence_array = starting_sentence.split("").map(&:downcase) # converts to array and lowercase
accurate_count = sentence_array - [" "] # subtracts all empty spaces
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")

while sentence_array.count("") < accurate_count.count
  puts "Guess a letter"
  guess = gets.downcase.chomp

  if sentence_array.include?(guess)
    letter_index = sentence_array.find_index(guess)
    sentence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now: #{final_sentence.join}"
  else
    puts "Sorry, that is an incorrect guess!"
  end

end
