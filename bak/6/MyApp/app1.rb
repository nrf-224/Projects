# encoding: CP866

9999.times do
print "������ �᫮ A\n"
a = gets.to_f

print "������ �᫮ B\n"
b = gets.to_f

print "����� ����⢨� �믮����? (*/+-)\n"
action = gets.to_s.strip

if b == 0 and action == "/"
puts "�� ���� ������ �����"
exit
end

result = 0

if action == "*" then result = a*b
puts "�������: #{result}"

elsif action == "/" then result = a/b
puts "�������: #{result}"

elsif action == "+" then result = a+b
puts "�������: #{result}"

elsif action == "-" then result = a-b
puts "�������: #{result}"

elsif action != "*" then
puts "�� ����� �����४⭮� ����⢨�"

elsif action != "/" then result = a+b
puts "�� ����� �����४⭮� ����⢨�"

elsif action != "+" then result = a-b
puts "�� ����� �����४⭮� ����⢨�"

elsif action != "-" then result = a/b
puts "�� ����� �����४⭮� ����⢨�"

end
end

