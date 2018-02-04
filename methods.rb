# def baseball_team_list
#   ["A's", "Angels", "Astros"]
# end

# def second_baseball_team_list
#   x = 15

#     return ["A's", "Angels", "Astros"] if x == 10
#     ["Yankess", "Mets"]

# end

# p second_baseball_team_list


class Invoice
  # class method
  def self.print_out
    "Print out invoice"
  end
  # instance method
  def convert_to_pdf
    "Converted to PDF"
  end
end

i = Invoice.new

p i.convert_to_pdf