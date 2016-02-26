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

#Print ASCII art and mystery word.

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

puts "Welcome to Word Guess.\nYour goal is to guess the correct word.\nEach time you guess a wrong letter not in the mystery word, you will lose a piece of pie."
puts "You must guess the correct word before you run out of pie."

puts frog1 = "    @ . . @
    (-------)
  (   >___<   )
  ^^  ~   ~   ^^
  \\\\\\\///////"

puts frog2 = "     @ . . @
    (-------)
  (   >___<   )
  ^^  ~   ~   ^^"

puts frog3 = "     @ . . @
    (-------)
  (   >___<   )"

puts frog4 = "      @ . . @
    (-------)"

puts frog5 = "     @ . . @"

puts frog6 = "   "

end
