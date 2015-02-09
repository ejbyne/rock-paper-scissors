def in_browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

Given(/^I am the first player to visit the homepage$/) do
  in_browser(:one) do
  	visit('/reset')
	  visit('/')
	end
end

When(/^I am the first player to click "(.*?)"$/) do |arg1|
  in_browser(:one) do
	  click_button(arg1)
	end
end

Then(/^as the first player I should see "(.*?)"$/) do |arg1|
  in_browser(:one) do
	  expect(page).to have_content(arg1)
	end
end

Given(/^I am the first player to select a multiplayer game$/) do
  step('I am the first player to visit the homepage')
  step('I am the first player to click "Multiplayer Game"')
end

When(/^I am the first player to enter my name$/) do
  in_browser(:one) do
    fill_in 'player_name', :with => 'Ed'
    click_button('Start Game')
  end
end
