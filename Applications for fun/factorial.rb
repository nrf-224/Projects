def fact(n)
  if n<= 1
    1
  else
    n * fact( n - 1 )
  end
end

puts "Enter number for counting factorial"

n = gets.to_i

puts "Factorial of #{n} is #{fact(n)}"