puts "Please enter your salary in Euro"
salary_gross = 5000
tax = salary_gross*0.40
salary_net = salary_gross-tax

puts "Salary"
puts salary_gross #amount of money

puts "Tax percent"
puts 0.40 #tax percent

puts "amount of tax"
puts tax #how many money I will pay as taxes

puts "final salary"
puts salary_net #my salary after paying taxes

puts "net salary per year"
puts salary_net*12

puts "gross salary per year"
puts salary_gross*12

print "Enter your name: "
myname = gets
puts "Keep learning, " +  myname

puts "Program finished. Press enter to exit"
gets

