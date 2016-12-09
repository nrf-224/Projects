print "Rock (R)? Scissors (S)? Paper (P)?\n"
loop do
s = gets.strip.capitalize

if s == "R" then
user_choice = :rock
elsif s == "S" then
user_choice = :scissors
elsif s == "P"
user_choice = :paper
else
puts "Incorrect data, program is terminating"
exit
end

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]


matrix = [

[:rock, :rock, :draw],
[:scissors, :scissors, :draw],
[:paper, :paper, :draw],
[:rock, :scissors, :first_win],
[:rock, :paper, :second_win],
[:scissors, :paper, :first_win],
[:scissors, :rock, :second_win],
[:paper, :rock, :first_win],
[:paper, :scissors, :second_win],

]

matrix.each do |item|
	if item[0] == user_choice && item[1] == computer_choice
		if item[2] == :first_win
		puts "You choose #{user_choice}, computer choose #{computer_choice}, you win!"
		elsif item[2] == :second_win
		puts "You choose #{user_choice}, computer choose #{computer_choice}, you loose"
		elsif item[2] == :draw
		puts "You choose #{user_choice}, computer choose #{computer_choice}, draw"
		end
	end

end
end