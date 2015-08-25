def double (x)
  x * 2
end

def square (x)
  x * x
end



system('clear')
puts "Welcome to the Squareulator."
loop do
  puts "Would you like to (D)ouble or (s)quare a number?"
  print "(D os S)"
  response = gets.chomp.upcase
  if response == "D"
    print "What number do you want to double?"
    response_number = gets.chomp.to_i
    puts "The Double of  #{response_number} is #{double(response_number)}"
    elsif response == "S"
    print "What number do you want to square?"
    response_number = gets.chomp.to_i
    puts "The Square of #{response_number} is #{square(response_number)}"
  elsif response == "Q"
    puts "Goodbye!"
    exit
  else
    puts "What?"
  end
end
