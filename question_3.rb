# sort the array
# biggest diff is between first and last
# for the smallest, need to compare all the adjacents

arr = []
puts "What's the size of the list?"
size = gets.chomp.to_i

(1..size).each do
  print "Please enter a value: "
  arr << gets.chomp.to_i
end

arr.sort!

rep = [1.0/0]
rep << arr[-1] - arr[0]

(1..size-1).each do |c|
  rep[0] = arr[c] - arr[c-1] if (arr[c] - arr[c-1]) < rep[0]
end

puts "#{rep[0]} #{rep[1]}"
