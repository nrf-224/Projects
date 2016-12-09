x = 0
output = File.open("output.txt", "a")
10.times do
output.puts "Something number #{x += 1}"
end
output.close
