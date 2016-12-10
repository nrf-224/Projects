puts "Enter number of posters:"
n = gets.to_f
#each 10 posters require a tube for transportation
result = (n/10).ceil

if result == 1
puts "You need 1 tube for your posters"
else
puts "You need #{result} tubes for your posters"
end
