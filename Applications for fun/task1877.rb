puts "Enter first code:"
code1 = gets.to_i
puts "Enter second code:"
code2 = gets.to_i

if ((code1 % 2 == 0) || (code2 % 2 != 0))
puts "Lock will be opened"
else
puts "Lock still closed"
end

 