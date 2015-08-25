@inf = 1.0 / 0.0

def check_age
  puts "Do you live in the UK or US?"
  country = gets.chomp.upcase
  puts "Hello, how old are you? To quit, type 0 (zero)."
  age = gets.chomp.to_i


  if country == "UK" || country == "US"
    case age
      when 1..18
        puts "Sorry, no permissions. "
      end

  if country == "US" || country == "UK"
    case age
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

    elsif country == "UK"
      case age
      when 18..@inf
        puts "In the UK, age 18 and older, you may enjoy a pint."
      when 16 || 17
        puts "Are your parents with you? T/F?"
        parents = gets.chomp.upcase
        if parents == "T"
          puts "You may order a drink."
        else
          puts "You have a little while before you can enjoy one with the 'rents."
        end
      end

    else
      puts "PLease enter only UK or US."
    end
end


loop do
check_age
exit
end

