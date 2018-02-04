class ApiConnector
  attr_accessor :title, :description, :url

  # this method always runs when you create an instance
  def initialize(title:, description:, url: "https://google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end

  def test_method
    puts "testing"
  end

  def api_logger
    puts "API connector starting..."
  end
  # private methods
  private
    def secret_method
      # puts "A secret message from inside the parent class"
    end
end

# api = ApiConnector.new

# api.url = "http://google.com/"
# puts api.url # => "http://google.com/"

# api.test_method # => "Testing class call"

# api = ApiConnector.new(title: "My Title", description: "My cool description")

# api.testing_initializers


# __Inheritance__

class SmsConnector < ApiConnector
  def send_sms
    puts "Sending SMS..."
    # `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts.1" #{@url}`
  end
end

class PhoneConnector < ApiConnector
  def send_phone_call
    puts "Sending phone call..."
  end

  # overide method from parent class
  # to demonstrate polymorphism
  # using 'super' allows us to call parent's 'api_logger' first then
  # run ours --- like inheritance for a method 
  def api_logger
    super
    puts "Phone call API connection starting..."
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "Sending email..."
  end
end

# sms = SmsConnector.new(title: "sms", description: "My cool description", url: "https://yahoo.com")

phone = PhoneConnector.new(title: "phone", description: "My cool description", url: "http://edutechional-smsy.herokuapp.com/notifications")

# mail = MailConnector.new(title: "mail", description: "My cool description", url: "https://yahoo.com")




# sms.send_sms
# phone.send_phone_call
# mail.send_email

phone.api_logger


