Feature: Playing the game
  In order to play Rock, Paper, Scissors
  As a player of a multiplayer game
  I want to select the winning weapon

Scenario: Selecting a weapon
  Given I have started the game
  When I select my weapon
  Then I should see "Waiting for other player..."

Scenario: Seeing the result
  Given I have selected my weapon
  When the other player has also selected his weapon
  Then I should see if I have won

Scenario: Playing again
	Given I have seen the result
	When I click "Try again!"
	Then I should be able to play again
