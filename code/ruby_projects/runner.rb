require 'pp'
require_relative 'users'

user=User.new 'baddam', 'bd@mail.com'

pp user

user.save