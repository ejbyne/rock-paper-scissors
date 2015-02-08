Given(/^I visit the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^I enter my name$/) do
  visit '/'
  step 'I click "Single Player Game"'
  fill_in 'player_name', :with => 'Ed'
end
