Feature: Playing the game
  In order to play Rock, Paper, Scissors
  As a player of a single player game
  I want to select the winning weapon

Scenario: Selecting a weapon
  Given I have started a single player game
  Then I should be able to select my weapon

Scenario: Seeing the result
  Given I have selected my weapon
  Then I should see if I have won

Scenario: Playing again
	Given I have seen the result
	When I click "Try again!"
	Then I should be able to play again
