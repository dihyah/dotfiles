#ARRAY 2ND PARAMETER

def alphabetize(arr, rev=false)
  if rev
    arr.sort!.reverse!
  else
    arr.sort
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}
