arr = %w[Mike Jessie Hank]

arr.each_with_index do |item, i|
	puts "#{i + 1}. #{item}"
end