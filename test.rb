# # # #local variable
# # # 10.times do
# # #   x = 0
# # # end

# # # #p x # => error b/c not in scope

# # # # global variable

# # # 10.times do
# # #   $x = 10
# # # end

# # # p $x #=> works here because '$' makes it global

# # # instance variables
# # # @batting_average = 300

# # # a var that is available to that 'instance'

# # #  Constant variable

# # TEAM = "Angels"

# # puts TEAM

# # TEAM = "Yankees"

# # puts TEAM

# # # will still change but shows errors


# # class variable
# class MyClass
#   @@teams = ["Yankees", "Tigers"]
# end

