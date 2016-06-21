# Ruby version of my guess your number game that I made in python
puts "\t\tGuess Your Number"
puts "Think of a number between 1 and 100. Once you have, press enter"
puts "NOTE: I am case sensitive"
gets

old_guess = 0
lower_limit = 0
upper_limit = 100
comp_guess = Random.new.rand(lower_limit..upper_limit)

# Need to improve this




puts "\n\nMy guess is... #{comp_guess}"
print "Is that your number? (Type yes or no)"
your_number = gets.chomp

if your_number == "yes"
  puts "\nOh. GG I guess?"
elsif your_number == "no"
  while your_number != "yes"
    old_guess = comp_guess
    puts "higher or lower? (Type h or l)"
    h_or_l = gets.chomp

    if h_or_l == "h"
      if old_guess == upper_limit
        puts "That doesn't make sense so game over."
        break
      end

      lower_limit = old_guess

    elsif h_or_l == "l"
      if old_guess == lower_limit
        puts "That doesn't make sense so game over."
        break
      end

      upper_limit = old_guess

    else
      puts "Please just answer the question correctly next time..."
    end

    comp_guess = Random.new.rand(lower_limit..upper_limit)

    while comp_guess == old_guess
      comp_guess = Random.new.rand(lower_limit..upper_limit)
    end

    puts "My guess is... #{comp_guess}"
    print "Is that your number? (Type yes or no)"
    your_number = gets.chomp

    if your_number == "yes"
      puts "\nThanks you for playing!"
    elsif your_number == "no"
      if upper_limit - lower_limit == 1
        puts "Either #{comp_guess} is your number or you didn't answer an earlier question correctly"
        break
      end
    else
      puts "Please just answer the question correctly next time..."
    end
  end
else
  puts "I refuse to play if you can't follow simple instructions"
end
print "\n\nPress the enter key to exit"
gets
