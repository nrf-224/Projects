#encoding: cp866
puts "Квадратное уравнение имеет вид ax^2 + bx + c = 0"
puts "Введите коэффициент a:"
a = gets.to_f
puts "Введите коэффициент b:"
b = gets.to_f
puts "Введите коэффициент c:"
c = gets.to_f

d = b**2 - 4*a*c
if d > 0 then
puts "Дискриминант: #{d}"
elsif d <0 then
puts "Дискриминант меньше нуля, уравнение не имеет действительных корней"
exit
elsif d == 0 then
puts "Дискриминант равен нулю, уравнение имеет один корень"
end
d2 = Math.sqrt(d)

x1 = (-b + d2)/(2*a)
x2 = (-b - d2)/(2*a)

if x1 == x2 then
puts "x = #{x1}"
else
puts "х1 = #{x1}, x2 = #{x2}"
end