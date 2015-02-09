Feature: Starting a single player game
  In order to play Rock Paper Scissors
  As a player of the game without a friend
  I want to start a new single player game

Scenario: Visiting the homepage
  Given I visit the homepage
  When I click "Single Player Game"
  Then I should see "Please enter your name"

Scenario: Entering the game
  Given I select a single player game
  When I enter my name
  And I click "Start Game!"
  Then I should see "Select your weapon!"
