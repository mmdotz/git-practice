def check_age
  #ask age
  puts "Hello, how old are you?"
  age = gets.chomp.to_i

  case permissions
    when age < 18
      puts "Sorry, you have no permissions"
    when age >= 18
      puts "You can vote AND smoke! Go enjoy."
end

#print what i can do at that age or older
  #if younger than 18 nothing
  #if older than 18 vote, smoke
  #if older than 21 drink
  #if older than 25 rent
