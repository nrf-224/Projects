puts "Enter number of enemies: "
n = gets.to_i

case
when n > 1 && n < 4
puts "You have few enemies"

when n > 5 && n < 9
puts "You have several enemies"

when n > 10 && n < 19
puts "You have pack of enemies"

when n > 20 && n < 49
puts "You have lots of enemies"

when n > 50 && n < 99
puts "You have horde of enemies"

when n > 100 && n < 249
puts "You have thong of enemies"

when n > 250 && n < 499
puts "You have swarm of enemies"

when n > 500 && n < 999
puts "You have zounds enemies"

when n > 1000
puts "You have legion enemies"

end