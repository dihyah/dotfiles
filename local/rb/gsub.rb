#.GSUB

print "Pleathe enter a thtring: " 
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "#{user_input}."
else
  puts "There are no 's's in your string."
end