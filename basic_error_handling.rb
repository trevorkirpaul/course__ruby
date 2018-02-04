# --basic

# begin
#   puts 9/0
# rescue 
#   puts "Rescued the error"
# end

# --this is better bc we get the actual error
# begin
#   puts nil + 10
# rescue StandardError => e 
#   puts "Error occured: #{e}"
# end

# --best

def error_logger(e)
  File.open("error_log.txt", 'a') do |file|
    file.puts e 
  end
end

begin
  puts 9/0
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")  
end
