print "String: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)

words.each { |word|
  frequencies.sort_by { |key, value|
    puts "#{value}: #{key}"
  }
}
