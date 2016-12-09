#encoding: cp866
def show_book book
	book.keys.each do |key|
	age = book[key]
	puts "Name #{key}, age #{age}"
	end
end


book1 = {'Mike' => 65, 'Gus' => 40, 'Sam' => 35}
show_book book1
puts "=================="
book2 = {'Walt' => 50, 'James' => 11, 'Steward' => 45}
show_book book2

puts

book = book1.merge book2
show_book book

puts

book = book2.merge book1
show_book book