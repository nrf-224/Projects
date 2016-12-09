#encoding: cp866

answer = "Y"

while answer == "Y"
print "Продолжить? (Y/N)\n"
answer = gets.to_s.strip.capitalize
puts "Продолжаем"
end
