puts "Enter total amount of cans: "
total = gets.to_i
puts "Enter amount of cans, shoot by Larry: "
lc = gets.to_i
puts "Enter amount of cans, shoot by Garry: "
gc = gets.to_i

puts "Garry didn't shoot #{total - gc}, Larry didn't shoot #{total - lc}"