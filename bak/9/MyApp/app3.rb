#encoding: cp866
base ={}                                   #юяЁхфхы хь яєёЄющ ї¤°

loop do                                    #юяЁхфхы хь Ўшъы фы  схёъюэхўэюую ттюфр
puts "Enter name:"
n = gets.to_s.strip.capitalize             #юяЁхфхы хь яхЁхьхээє■ n, т ъюЄюЁющ їЁрэшЄё  шь 

	if n == ""                         #чрфр╕ь єёыютшх яЁхъЁр∙хэш  Ўшъыр
	break
	end

puts "Enter phone number:"
number = gets.to_i                         #юяЁхфхы хь яхЁхьхээє■ number, т ъюЄюЁющ їЁрэшЄё  ЄхыхЇюээ√щ эюьхЁ

base[n] = number                           #фюсрты хь чэрўхэш  яхЁхьхээ√щ n ш number т ї¤°
end

base.each do |n, number|                   #юяЁхфхы ь ьхЄюф each фы  ї¤°р base ё яхЁхьхээ√ьш n ш number
puts "#{n}, #{number}"                     #т√тюфшь чэрўхэш  n ш number фы  ърцфюую шч ¤ыхьхэЄют ї¤°-ЄрсышЎ√
end

