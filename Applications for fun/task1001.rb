puts "enter number of values: "
n = gets.to_i

n.times do |a|
a = rand(0..10**18)
puts "#{a}, square root is #{Math.sqrt(a)}"
end