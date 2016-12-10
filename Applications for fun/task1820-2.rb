puts "Enter number of steaks"
n = gets.to_f
puts "Enter number of steaks, which can be prepared in one time"
k = gets.to_f
t = (n/k).ceil
puts "Each stake fries 1 minute on each side"
puts "Total time for prepare all steaks is #{2*t} minutes"

