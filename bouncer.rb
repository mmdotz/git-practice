@inf = 1.0 / 0.0
@permissions= ["vote", "smoke", "drink", "rent a car"]

def check_age
  puts "Do you live in the UK or US?"
  country = gets.chomp.upcase
  puts "Hello, how old are you? To quit, type 0 (zero)."
  age = gets.chomp.to_i

  if country == "US"
    case age
      when 1..18
        puts "Sorry, no permissions. "
      when 18..21
        puts "You can #{@permissions[0]}."
      when 21..25
        puts "You can #{@permissions[0...2]}." # how to remove the array?
      when 25..@inf
        puts "You can #{@permissions}. Please don't drink and drive."
      when 0
        puts "Thank you. Goodbye."
        exit
    end

    elsif country == "UK"
      case age
        when 18
          puts "You can #{@permissions[2]}."
        when 16, 17
          puts "Are your parents with you? T/F?"
          parents = gets.chomp.upcase
          if parents == "T"
            puts "You may order a drink."
          else
            puts "You have a few years before you can enjoy one with the 'rents."
          end
        when 18..21
          puts "You can #{@permissions[0]}."
        when 21..25
          puts "You can #{@permissions[0...2]}." # how to remove the array?
        when 25..@inf
          puts "You can #{@permissions}. Please don't drink and drive."
        when 0
          puts "Thank you. Goodbye."
          exit

      end
  end
end

loop do
check_age
exit

end

