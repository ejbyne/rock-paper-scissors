Feature: Playing the game
  In order to play Rock, Paper, Scissors
  As a player of a multiplayer game
  I want to select the winning weapon

Scenario: Selecting a weapon
  Given I am the first player to start a multiplayer game
  When I am the first player to have selected a weapon
  Then as a waiting player I should see "Waiting for other player..."

Scenario: Seeing the result
  Given I am the first player to have selected a weapon
  When the other player has also selected his weapon
  Then the other player should see if he or she has won

Scenario: Playing again
	Given the other player has seen the result
	When the other player clicks "Try again!"
	Then the other player should be able to play again
