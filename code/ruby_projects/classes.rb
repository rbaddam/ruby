# class
class User
  attr_accessor :name, :email
  def initialize(name, email)
      # @ is instance variable
      @name = name
      @email = email

  end
  # def run
  #   puts "running"
  # end
  # def get_name
  #   @name
  # end
  # def set_name=(name)
  #   @name =name
  # end
end

# object
user = User.new("raghu","rb@g.com")
puts "user : #{user.name} and mail : #{user.email}" 
user.name = "john"
user.email = "rb@y.com"
puts "user new name: #{user.name} and new mail : #{user.email}" 


# puts User.ancestors