# encoding: CP866

9999.times do
print "Введите число A\n"
a = gets.to_f

print "Введите число B\n"
b = gets.to_f

print "Какое действие выполним? (*/+-)\n"
action = gets.to_s.strip

if b == 0 and action == "/"
puts "На ноль делить нельзя"
exit
end

result = 0

if action == "*" then result = a*b
puts "Результат: #{result}"

elsif action == "/" then result = a/b
puts "Результат: #{result}"

elsif action == "+" then result = a+b
puts "Результат: #{result}"

elsif action == "-" then result = a-b
puts "Результат: #{result}"

elsif action != "*" then
puts "Вы ввели некорректное действие"

elsif action != "/" then result = a+b
puts "Вы ввели некорректное действие"

elsif action != "+" then result = a-b
puts "Вы ввели некорректное действие"

elsif action != "-" then result = a/b
puts "Вы ввели некорректное действие"

end
end

