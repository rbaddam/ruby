require 'json'

class User
  
  attr_accessor :name, :email, :permissions
  
  def initialize(*args)
      @name = args[0]
      @email = args[1]
      @permissions = User.permissions_from_file
  end
  
  def self.permissions_from_file
    file = File.read 'user_permissions.json'
    JSON.load(file, nil, sumbolize_names: true)
  end
  
  def save
    var={name: @name, email: @email, permissions: @permissions}.to_json
    open('users.json', 'a') do |file|
    file.puts var
    end
  end

end