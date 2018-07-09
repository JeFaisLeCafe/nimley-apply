# if ok, every website should be pointed to at least once.
# require also at least as many hyperlinks as websites

ans = "1"

print "How many websites? "
nb_web = gets.chomp.to_i
websites = [*(1..nb_web)]

print "How many links? "
nb_links = gets.chomp.to_i

# building the array of links; we need only the point_to part
if nb_links < nb_web
  ans = "0"
else
  point_to = []
  (1..nb_links).each do
    inp = []
    puts "Enter the link (like '1 2')"
    inp = gets.chomp.split(" ").map{ |value| value.to_i }
    point_to << inp[1]
  end

# Checking if every website is pointed to
  websites.each do |website|
    ans = "0" unless point_to.include?(website)
  end
end

puts ans
