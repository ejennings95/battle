def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'name1'
  fill_in 'player_2', with: 'name2'
  click_button 'Submit'
end
