Feature: Starting a multiplayer game
  In order to play Rock Paper Scissors
  As a player of the game with a friend
  I want to start a new multiplayer game

Scenario: Visiting the homepage
  Given I am the first player to visit the homepage
  When I am the first player to click "Multiplayer Game"
  Then as the first player I should see "Please enter your name"

Scenario: Entering the game
	Given I am the first player to select a multiplayer game
  When I am the first player to enter my name
  Then as the first player I should see "Select your weapon!"
