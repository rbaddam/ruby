#hash is a name value pair

def lookup
  phone_book = {
  "ny" => "111",
  "ca" => "222",
  "tx" => "333",
  }
  puts "Choose city name:"
  phone_book.each {|k,v| puts "#{k}"}
  puts "?"
  city = gets.chomp
  if phone_book.include?(city)
    phone_book.each {|k,v| puts "code : #{v}" if k == city }
  else
    puts "The city which you entered is not found in our directory"
  end
end

loop do 
  lookup
  puts "Do you want to lookup another city(yes/no)?"
  ans = gets.chomp
  if ans != "yes"
    break
  end 
end