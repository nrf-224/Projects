#encoding: cp866
# ��� �襭��, ��� 横��
arr1 = %w[����� ��堨� ��ࣥ� ����ᥩ ����਩ ��ᨫ��]
x = 0
puts "���᮪ �祭����"
arr1.each do |name|                                    #����� 横�, �뢮��騩 ���祭�� ���ᨢ� arr1. ⠪ �� ��।������ ��६����� name ����� 横��
	puts "#{x} #{name}"
	x = x + 1
end

puts "������ ����� �祭���, ���ண� ���� 㤠���� �� ᯨ᪠:"
y = gets.to_i
puts
arr1.delete_at y
arr2 = arr1
x = 0
arr2.each do |name|
	puts "#{x} #{name}"
	x = x+1
end
