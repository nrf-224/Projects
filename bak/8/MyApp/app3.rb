#encoding: cp866

arr1 = ["walt", "hank", "jr", "jessie", "lida", 21]    #��।������ ���ᨢ� ���祭��. �᫮ 21 ��।����� ��� ��ꥪ� ⨯� integer
print arr1
puts
x = 1
arr1.each do |name|                                    #����� 横�, �뢮��騩 ���祭�� ���ᨢ� arr1. ⠪ �� ��।������ ��६����� name ����� 横��
	puts "#{x} #{name}"
	x = x + 1
end
puts
arr2 = %w[fedor victor stepan gennadiy alexey 21]      #��� ���� ᯮᮡ ��।������ ���ᨢ�. �᫮ 21 ��।����� ��� ��ꥪ� ⨯� string
print arr2