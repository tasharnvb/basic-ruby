# Monday - 20/06/16
# Exercise 1

def get_user_input(question1, question2, method)
  print "\n"
  print question1
  answer1 = gets.chomp
  print "\n"
  print question2
  answer2 = gets.chomp
  print "\n"

  case method
  when "sum_calculator"
    answer1 = answer1.to_i
    answer2 = answer2.to_i
  when "calculate_user_age"
    answer2 = answer2.to_i
  end

  return answer1, answer2
end

# Greeter
def greeter
  question1 = "Please enter your first name: "
  question2 = "Please enter your second name: "

  # __callee__ returns the name of the currently executing method: http://stackoverflow.com/a/12940734
  f_name, s_name = get_user_input question1, question2, __callee__.to_s

  puts "\nHi #{f_name} #{s_name}, how are you today?\n\n"
end

# Addition
def sum_calculator
  question1 = "Please enter the first number: "
  question2 = "Please enter the second number: "

  num_1, num_2 = get_user_input question1, question2, __callee__.to_s

  sum = num_1 + num_2

  puts "\n#{num_1} + #{num_2} = #{sum}\n\n"
end

# Calculate user's age in seconds
def calculate_user_age
  question1 = "Please enter your name: "
  question2 = "Please enter your age (in years): "

  name, age = get_user_input question1, question2, __callee__.to_s

  curr_time = Time.now
  birthday = Time.new(curr_time.year - age)
  age_in_seconds = (curr_time - birthday).to_i

  puts "Hi #{name}. Did you know that you have already been alive for #{age_in_seconds} (roughly estimated) seconds?"
end

# -------------------------------------------
# Exercise 2
# Returns an upper-case string
def uppercase
  question1 = "Please enter your first name: "
  question2 = "Please enter your second name: "

  # __callee__ returns the name of the currently executing method: http://stackoverflow.com/a/12940734
  f_name, s_name = get_user_input question1,   question2, __callee__

  name = f_name + s_name

  return name.upcase.reverse
end

# -------------------------------------------
# Exercise 3
def complimenter
  print "What's your name? "
  name = gets.chomp

  print "What is the month of your birth? "
  birth_month = gets.to_i

  print "What is the year of your birth? "
  birth_year = gets.to_i

  curr_year = Time.now.year
  curr_month = Time.now.month
  age = curr_year - birth_year

  if curr_month - birth_month < 0
    age -= 1
  end

  permission = true

  if age < 6 || age > 70
    puts "Good job using a computer at your age!"
  end

  if age < 16
    print "Do you have permission to use this program? (Type yes or no) "
    answer = gets.chomp

    if answer.downcase == "no"
      permission = false
    end

  end

  # Condition ? if true : if false
  permission ? puts("Hi, #{name}, you are #{age} years old.") : puts("You need permission from your parents to use this program")

end

def array_practice
  music = [["Theme of Laura", "Akira Yamaoka"], ["Tout est Perplexe (Theme Q)", "Shiro Sagisu"], ["Still Alive", "Solar Fields"], ["To the Moon - Piano", "Kan Gao"], ["Everything's Alright", "Laura Shigihara"]]
  music.each do |song_info|
    song = song_info[0]
    artist = song_info[1]
    puts "\nTitle: #{song_info[0]}\nArtist: #{artist}\n\n"
  end

  print "Do you want to add a song to this list? "
  answer = gets.chomp

  if answer == "yes"
    song_question = "Please enter the name of the song you want to add: "
    artist_question = "Please enter the name of the artist for the song: "

    song_title, song_artist = get_user_input song_question, artist_question, __callee__.to_s
    new_song = [song_title, song_artist]

    music.push(new_song)

    music.each do |song_info|
      song = song_info[0]
      artist = song_info[1]
      puts "\nTitle: #{song_info[0]}\nArtist: #{artist}\n\n"
    end
  end

end

# -------------------------------------------
# Exercise 4
def personal_details
  # require "pry"
  user_details = {}
  print "Please enter your name: "
  user_details[:name] = gets.chomp
  print "Please enter your date of birth: "
  user_details[:dob] = gets.chomp
  print "Please enter your age: "
  user_details[:age] = gets.chomp
  print "Please enter your height: "
  user_details[:height] = gets.chomp

  # binding.pry

  user_details[:relatives] = []
  puts "Please enter the name of your relatives (When you are finished, just hit enter):"
  while true
    relative_name = gets.chomp
    if relative_name.empty?
      break
    else
      user_details[:relatives] << relative_name
    end
  end
  puts "-----------------------"
  user_details.each do |k,v|
    k_str = k.to_s
    if k_str == "name"
      puts "Name: #{v}"
    elsif k_str == "dob"
      puts "Date of Birth: #{v}"
    elsif k_str == "age"
      puts "Age: #{v}"
    elsif k_str == "height"
      puts "Height: #{v}"
    elsif k_str == "relatives"
      print "Relatives: "
      v.each { |relative| print "#{relative} " }
    end
    puts "\n"
  end
end

# -------------------------------------------
# Demonstrating recursion
def factorial_finder(x)
  if x <= 1
    return 1
  end

  y = factorial_finder(x - 1)

  return x * y
end

# Danny's recursion example
def ask_recursively(question)
  puts question
  reply = gets.chomp

  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    puts "Please answer yes or no"
    ask_recursively question
  end
end



# -------------------------------------------

# Exercise 1
# greeter
# sum_calculator
# calculate_user_age

# Exercise 2
# puts uppercase

# Exercise 3
# complimenter

# array_practice

# Exercise 4
# personal_details

# Recursion
# puts factorial_finder 5

ask_recursively "Is it sunny outside?"
