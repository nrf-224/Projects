puts "Enter number of tasks, which will be solved at 1st hour: "
n = gets.to_i
r = 5

if ((n + r) < 12)
puts "NO"
elsif ((n + r) == 12)
puts "Yes"
else ((n + r) > 12)
puts "Incorrect data"
end