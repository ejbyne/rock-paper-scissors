[![Code Climate](https://codeclimate.com/github/ejbyne/ruby-rock-paper-scissors/badges/gpa.svg)](https://codeclimate.com/github/ejbyne/ruby-rock-paper-scissors)
[![Test Coverage](https://codeclimate.com/github/ejbyne/ruby-rock-paper-scissors/badges/coverage.svg)](https://codeclimate.com/github/ejbyne/ruby-rock-paper-scissors)

# Rock Paper Scissors (Ruby)

## Summary

Our Week 3 challenge at Makers Academy was to build a Rock Paper Scissors web application with Sinatra.

With Cucumber feature tests I used behaviour driven development to create the structure of the application. I started by creating a single player game, so that the computer player chooses a random choice, and used TDD to build the game logic in Ruby. I then went on to create a multiplayer game, which involved creating additional feature tests and adding sessions and separate controllers and views for the multiplayer version.

This was a useful exercise in terms of consolidating what I had previously learned during the Battleships project, in particular using the Cucumber and Capybara testing frameworks and integrating our Ruby code into the Sinatra web framework.

The live version of the application can be viewed [here](https://ruby-rock-paper-scissors.herokuapp.com).

## Technologies used
- Ruby
- Sinatra
- RSpec
- Cucumber
- Capybara
- Heroku

## Screenshots
###Playing the game
<img src='/images/game_screenshot.png'>
###Showing the winner
<img src='/images/result_screenshot.png'>

## Completed tasks
- The player has to enter their name before the game
- The player will be presented with the choices (rock, paper and scissors)
- The player can choose one option
- The game will choose a random option
- A winner will be declared
- Change the game so that two players can play against each other

## To do list
- Improve CSS
- Enable multiple games to be played simultaneously
- Expand the game to use Rock Paper Scissors Lizard Spock rules
