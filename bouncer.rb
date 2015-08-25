@inf = 1.0 / 0.0



def check_age
  #ask age
  puts "Hello, how old are you? To quit, type 0 (zero)."
  age = gets.chomp.to_i

  case age
    when 1..18
      puts "Sorry, you have no permissions. "
    when 18..21
      puts "You can vote AND smoke! Go enjoy."
    when 21..25
      puts "You can vote, smoke, and drink a beer."
    when 25..@inf
      puts "You can vote, smoke tobacco, drink alcohol and rent a car. Please don't drink and drive."
    when 0
      puts "Thank you. Goodbye."
      exit
    end
end

loop do
check_age
end

