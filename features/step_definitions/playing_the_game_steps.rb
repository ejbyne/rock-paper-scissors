Given(/^I have started the game$/) do
  visit '/'
  step('I click "New Game"')
  step('I enter my name')
  step('I click "Start Game!"')
end

When(/^I select my weapon$/) do
  select 'Rock', :from => 'choice'
end

Given(/^I have selected my weapon$/) do
  step('I have started the game')
  step('I select my weapon')
  step('I click "Select"')
end

Then(/^I should see if I have won$/) do
  expect(page).to have_content('You have')
end
