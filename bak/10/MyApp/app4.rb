#encoding: cp866
def show_book book
	puts "<br>"
	book.keys.each do |key|
	age = book[key]
	puts "Name #{key}, age #{age}"
	puts "<br>"
	end
end


book1 = {'Mike' => 65, 'Gus' => 40, 'Sam' => 35}
show_book book1
puts "=================="
book2 = {'Walt' => 50, 'James' => 11, 'Steward' => 45}
show_book book2

puts

book1.merge! book2                      #������� ���-������� book1 � book2, �� ��������� ��� ����� ��������� ����������

puts "<body>"
puts "<head>"
puts "<title>My first presentation.ppt</title>"
puts "</head>"

show_book book1
