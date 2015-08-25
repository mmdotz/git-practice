@inf = 1.0 / 0.0

def check_age
  #ask age
  puts "Hello, how old are you?"
  age = gets.chomp.to_i

  case age
    when 0..18
      puts "Sorry, you have no permissions. "
    when 18..21
      puts "You can vote AND smoke! Go enjoy."
    when 21..25
      puts "You can vote, smoke, and drink a beer."
    when 25..@inf
      puts "You can vote, smoke tobacco, drink alcohol and rent a car. PLease don't drink and drive."
    end
end

check_age


#print what i can do at that age or older
  #if younger than 18 nothing
  #if older than 18 vote, smoke
  #if older than 21 drink
  #if older than 25 rent
