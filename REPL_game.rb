puts "Let's play the \"How Many Shots Can I Take?\" game!"
puts " "
puts "How many shots do you think you can handle?"
puts " "
puts "Input \'any key\' to take a shot!"

def my_game
  shots = rand(10) + 5;
  taken = 0

  while taken <= shots
    puts ""
    puts "You have taken #{taken} shots."
    puts ""
    puts "Would you like to take a shot (yes/no)?"

    choice = gets.strip.downcase


    if choice == "yes"
      taken += 1
    elsif choice == "no"
      break
    else
      puts "Invalid choice..."
    end
  end

  if taken > shots
    puts "Seems like you could've only handled #{shots} shots, but you took #{taken} shots and passed out! TRY AGAIN!"
  elsif taken == shots
    puts "You are a brave warrior and know your body well. #{taken}/#{shots} taken successfully!"
  else
    puts "You ended the night too early. Seems like you could've handled #{shots} shots, but you took #{taken} shots."
  end

end



puts my_game
