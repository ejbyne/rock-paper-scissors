Given(/^I have started a single player game$/) do
	visit('/reset')
  step('I enter my name')
  step('I click "Start Game!"')
end

Then(/^I should be able to select my weapon$/) do
  expect(page).to have_content('Select your weapon!')
end

Given(/^I have selected my weapon$/) do
  step('I have started a single player game')
  select 'Rock', :from => 'choice'
  step('I click "Select"')
end

Then(/^I should see if I have won$/) do
  expect(page).to have_content('Result')
end

Given(/^I have seen the result$/) do
  step('I have selected my weapon')
end

Then(/^I should be able to play again$/) do
  expect(page).to have_content('Select your weapon!')
end
