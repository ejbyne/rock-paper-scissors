def in_browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

Given(/^I am the first player to start a multiplayer game$/) do
  step('I am the first player to select a multiplayer game')
  step('I am the first player to enter my name')
end

Given(/^I am the first player to have selected a weapon$/) do
  step('I am the first player to start a multiplayer game')
  in_browser(:one) do
    select 'Rock', :from => 'choice'
    click_button('Select')
  end
end

Then(/^as a waiting player I should see "(.*?)"$/) do |arg1|
  in_browser(:one) do
    expect(page).to have_content('Waiting for other player...')
  end
end

When(/^the other player has also selected his weapon$/) do
  in_browser(:two) do
    visit('/')
    click_button('Multiplayer Game')
    fill_in 'player_name', :with => 'Henry'
    click_button('Start Game!')
    select 'Scissors', :from => 'choice'
    click_button('Select')
  end
end

Then(/^the other player should see if he or she has won$/) do
  in_browser(:two) do
    expect(page).to have_content('Result')
  end
end

Given(/^the other player has seen the result$/) do
  step('I am the first player to have selected a weapon')
  step('the other player has also selected his weapon')
end

When(/^the other player clicks "(.*?)"$/) do |arg1|
  in_browser(:two) do
    click_button('Try again!')
  end
end

Then(/^the other player should be able to play again$/) do
  in_browser(:two) do
    expect(page).to have_content('Select your weapon!')
  end
end
