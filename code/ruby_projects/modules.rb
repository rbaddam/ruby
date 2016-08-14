# module--...able
module Destructable
  def destroy(anyobject)
      puts "I wii destroy the object"
  end
end
# class
class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
      # @ is instance variable
      @name = name
      @email = email

  end
  def self.call
    puts "I am a call method"
  end
end

class Buyer < User

end

class Seller < User

end

class Admin < User

end



# object
user = User.new("raghu","rb@g.com")
puts "user : #{user.name} and mail : #{user.email}" 
user.name = "john"
user.email = "rb@y.com"
puts "user new name: #{user.name} and new mail : #{user.email}" 


buyer1 = Buyer.new("raghu","rb@g.com")
puts "user : #{buyer1.name} and mail : #{buyer1.email}" 
seller1 = Seller.new("raghu","rb@g.com")
puts "user : #{seller1.name} and mail : #{seller1.email}" 
admin1 = Admin.new("raghu","rb@g.com")
puts "user : #{admin1.name} and mail : #{admin1.email}" 


puts Buyer.ancestors
User.call
user.destroy("myname")