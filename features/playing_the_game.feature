Feature: Playing the game
  In order to play Rock, Paper, Scissors
  As a player of the game
  I want to select the winning weapon

Scenario: Taking the first turn
  Given I have started the game
  When I select my weapon
  Then I click "Select"

Scenario: Taking the second turn
  Given I have selected my weapon
  Then I should see if I have won
