Feature: Starting a multiplayer game
  In order to play Rock Paper Scissors
  As a player of the game with a friend
  I want to start a new multiplayer game

Scenario: Visiting the homepage
  Given I visit the homepage
  When I click "Multiplayer Game"
  Then I should see "Please enter your name"

Scenario: Entering the game
	Given I select a multiplayer game
  When I enter my name
  And I click "Start Game!"
  Then I should see "Select your weapon!"
