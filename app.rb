def play_game
  tries = 0
  lower = 1
  upper = 1000
  response = ''
  
  guess = (lower + upper) / 2
  tries += 1
  while response != "yes" do 
    puts "Is your number #{guess}? Or higher? Or lower?"
    response = gets.chomp.downcase
    if response == "higher"
      lower = guess + 1
      guess = (lower + upper) / 2
      tries += 1
    elsif response == "lower"
      upper = guess - 1
      guess = (lower + upper) / 2
      tries += 1
    elsif response == "yes"
      puts "I guessed your number in #{tries} tries!"
    else
      puts "Invalid response! Type higher, lower, or yes!"
    end
  end
  puts "Would you like to play again?"
  play_again = gets.chomp.downcase
  while play_again != "yes" or play_again != "no" do
    if play_again == "yes"
      play_game
    elsif play_again == "no"
      puts "Alright, then! Bye bye!"
      exit
    else 
      puts "Invalid response. Type yes or no!"
      play_again = gets.chomp.downcase
    end
  end
end

puts "Hi, there! What's your name?"
name = gets.chomp

puts "Well, hello #{name}. I'm a number guessing program!\nWould you like to play the number guessing game?"
playing = gets.chomp.downcase

while playing != "yes" or playing != "no" do 
  if playing == "yes"
    puts "Great! Pick a number between 1 and 1000!\nI can guess it in 10 tries or less!"
    play_game
  elsif playing == "no"
    puts "Alright, then! Bye bye!"
    exit
  else
    puts "Invalid response. Type yes or no!"
    playing = gets.chomp.downcase
  end
end