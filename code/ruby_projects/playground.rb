puts " enter your first number"
fn = gets.chomp
puts " enter your second name"
sn = gets.chomp
# puts fn.to_i * sn.to_i

def mult(fn, sn)
  fn.to_f * sn.to_f   
end
def div(fn, sn)
  fn.to_f / sn.to_f   
end
def add(fn, sn)
  fn.to_f + sn.to_f   
end
def sub(fn, sn)
  fn.to_f - sn.to_f   
end

puts "what do you want to do ?"
puts "add,sub,mult,div"
prompt = gets.chomp

if prompt=="mult"
  puts mult(fn, sn)
elsif prompt=="div"
  puts div(fn, sn)

elsif prompt=="add"
  puts add(fn, sn)

elsif prompt=="sub"
  puts sub(fn, sn)
else puts "you entered an invalid option"   
  
end