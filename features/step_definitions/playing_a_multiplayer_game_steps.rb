def in_browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

Given(/^I have started a multiplayer game$/) do
  in_browser(:one) do
    visit '/'
    step('I click "Multiplayer Game"')
    fill_in 'player_name', :with => 'Ed'
    step('I click "Start Game!"')
  end
end

Given(/^I am the first player to have selected a weapon$/) do
  in_browser(:one) do
    step('I have started a multiplayer game')
    step('I have selected my weapon')
    step('I click "Select"')
  end
end

When(/^the other player has also selected his weapon$/) do
  in_browser(:two) do
    visit '/'
    click_button('Multiplayer Game')
    fill_in 'player_name', :with => 'Henry'
    click_button('Start Game!')
    select 'Scissors', :from => 'choice'
    click_button('Select')
  end
end
