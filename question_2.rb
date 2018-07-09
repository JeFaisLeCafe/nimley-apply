# ask how many streets
# ask for nb of houses and money in each, accordingly
# compute the max money for each street
# print results

puts "How many streets is there in the town?"
nb_streets = gets.chomp.to_i
inp = []

if nb_streets == 0
  puts "0"
end

(1..nb_streets).each do |c|
  puts "How many houses and how much money in each house? (2 int separed by a whitespace)"
  ans = gets.chomp
  ans = ans.split(" ").map{ |value| value.to_i }
  # ans[0] is nb of houses in the street, ans[1] is value of each house

  loot = (ans[0] / 2.0).round * ans[1]

  inp << loot
end

inp.each {|res| puts res}
