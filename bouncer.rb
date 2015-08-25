@inf = 1.0 / 0.0

def check_age
  puts "Hello, how old are you? To quit, type 0 (zero)."
  age = gets.chomp.to_i
  puts "Do you live in the UK or US?"
  country = gets.chomp.upcase

if country == "US"
  case age
    when 1..18
      puts "Sorry, no permissions. "
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

  else
    case age
    when 18..@inf
      puts "In the UK, at age 18 you may enjoy a pint."
    when 16 || 17
      puts "Are your parents with you? T/F?"
      parents = gets.chomp.upcase
      if parents == "T"
        puts "You may order a drink."
      else
        puts "You have a few years before you can enjoy one with the rents."
      end
    end
end
end

loop do
check_age
end

