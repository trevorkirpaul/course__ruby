class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end
end

p "The bunny was in trouble with teh king's bunny".censor("bunny")