Given(/^I visit the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^I select a single player game$/) do
  visit '/'
  step('I click "Single Player Game"')
end

Given(/^I enter my name$/) do
	step('I select a single player game')
  fill_in 'player_name', :with => 'Ed'
end
