require 'pry'
require 'colorize'
# Word Guess 2.25.16 Risha Allen & Justine Winnie

# Determine what type of ASCII art your team would like to utilize - be creative!
# Think through how you think you should structure your code. Your code should utilize class(es) and methods to keep functionality contained.
# Create a program that will accept one user guess input and print it out in the terminal.
#
# Primary Requirements
#
# Game play
#
# The user should be able to input a single letter at a time.
# Between each guess, the board should be redrawn to the terminal output (Ascii art!).
# Display the letters that have already been guessed before each player guesses a new letter.
# Technical
#
# You should be able to play your game by running it using ruby from the terminal.
# Use Ruby class objects to contain your game logic. You may be able to implement your solution using just one class, but consider how isolating related functionality into separate classes may increase your code's readability and maintainability.

#Create an array of possible words for the player to guess. Use sample to get one word from array.
# mystery_words = %w(get red kitty nose)
#
# #Print ASCII art and mystery word.
# puts frogarray[0]
# puts mystery_words.sample

#Ask player to guess a letter.
#Capture the guess and push to array "letters you've guessed"
#Checks whether letter is in mystery word.

#If true:
#Print "Got it right!"
#Print mystery word with correct guessed letter inserted.
# variable current guess. When == mystery, they win!
#Loop back to Guess.

#Else/if false, print "Wrong!" and remove one section of ASCII art.
#Print "Try again!"
#Loop back to Guess.

# a method that will print an updated image to the string. that informs of the amount left
# store the art in an array which will be indexed [0].....ect
# syntax: print pie array with index[1]

#def froggy
#end

# #
#      @ . . @
#     (-------)
#   (   >___<   )
#   ^^  ~   ~   ^^
#   \\\\\\\///////
# #
# #   @ . . @
#  (-------)
# (   >___<   )
#
#
#
#
# ^^  ~   ~   ^^
# \\\\\\\///////
#
#     @ . . @
#    (-------)
#   (   >___<   )
#  ^^  ~   ~   ^^
#  \\\\\\\///////

#Reprint the ASCII image, the guessed letters the status of the mystery word
# (create a method)

#When word mystery word is complete
# puts the correct word
# print ASCII art
# puts "you won!"
# exit

#When ASCII art is gone!
# puts "you lost"
# exit


class WordGuess

   frog1 = "       @ . . @
      (-------)
    (   >___<   )
    ^^  ~   ~   ^^ ".colorize(:green) +
    "\n   //////\\\\\\\///////
    ~~~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~~~ ".colorize(:blue)

  frog2 = "       @ . . @
      (-------)
    (   >___<   )
    ^^  ~   ~   ^^ ".colorize(:green) +
      "\n   ~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~ ".colorize(:blue)

  frog3 = "       @ . . @
      (-------)
    (   >___<   ) ".colorize(:green) +
    "\n   ~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~
    ~~~~~~~~~~~~~~".colorize(:blue)

  frog4 = "       @ . . @
      (-------)".colorize(:green) +
      "\n   ~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~ ".colorize(:blue)

  frog5 = "       @ . . @".colorize(:green) +
  "\n   ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~ ".colorize(:blue)

  frog6 =  "  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~
  ~~~~~~~~~~~~~~ ".colorize(:blue)

  frogarray = []
  frogarray.push(frog1, frog2, frog3, frog4, frog5, frog6)
#Create an array of possible words for the player to guess. Use sample to get one word from array.
mystery_words = %w(get red kitty nose)

  puts "Welcome to Word Guess.\nYour goal is to guess the correct word.\nEach time you guess a wrong letter not in the mystery word, the frog will sink into the water a little more."
  puts "You must guess the correct word before the frog is submerged."
  puts "Let's get started!"
  #Print ASCII art and mystery word.
  puts frogarray[0]
  # guesses = false
  # until guesses == words_display ||
  # sample is a method on the array class
  # chars is a method on the string class and returns an array of characters
  words_display = mystery_words.sample.chars
  # print words_display
  # replace the letter in mystery word with dashes
  n = words_display.length
  dashed_word = ("-" * n).chars.to_a
  p dashed_word


  # index where they have guessed
  #guessed_letter = []
  wrong_guesses = []
  # display for each turn
  # store the wrong guess in an array
  while dashed_word.include?("-") && wrong_guesses.length < 5
    puts "What letter do you want to guess?"
    guessed_letter = gets.chomp
    if words_display.include?(guessed_letter)
      puts "That is correct!"
      puts frogarray[wrong_guesses.length]
      # puts frogarray[g]
      # where is the guessed_letter in words_display
      # replace the dash (a string) at that index with guessed_letter
      # ["r", "e", "d"].index("r")
      # => 0
      # a = words_display.index(guessed_letter)
      # puts a
      # a = 0
      # dashed_word[a] = guessed_letter
      a = []
      words_display.each_with_index do |val, ind| # this method will keep looping through every thing in the array until gets all
        if val == guessed_letter # "r"
           a.push(ind) # 0
        end
          a.each do |i|
            dashed_word[i] = guessed_letter
        end
      end
    # end
        # dashed_word.include?(words_display)
      #  puts "You won!"

    elsif wrong_guesses.include?(guessed_letter) && dashed_word.include?(guessed_letter) # this is not working
      puts "You have already guessed this letter, please guess again."
          puts frogarray[wrong_guesses.length]
        # end
    else puts "No! #{guessed_letter} is wrong\n"
          wrong_guesses.push("#{guessed_letter}")
          puts frogarray[wrong_guesses.length]
    end
       # wrong_guesses.length means "how many things in the array"
    # print the frog starting to drown.

    p "The mystery word: "
    p dashed_word
    p "Wrong letters you have guessed so far: "
    p wrong_guesses
  end
      if wrong_guesses.length == 5
          puts "Sorry, you lost. The frog is totally submerged!"
          exit
      end

        if dashed_word.include?("-") == false
            puts "You won!"
        end

end
        # uh oh, you lost.
    # end
  # end
  # end
  # else
  # puts "You win!"
