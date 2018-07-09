# iterate from 1 to N
# each time, check if %3 or %5 or both
# print the output accordingly

puts "How many lines do you want to print?"
n = gets.chomp.to_i

(1..n).each do |count|
  if count%3 == 0 && count%5 == 0
    puts "FizzBuzz"
  elsif count%3 == 0
    puts "Fizz"
  elsif count%5 == 0
    puts "Buzz"
  else
    puts "#{count}"
  end
end
