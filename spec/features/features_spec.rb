feature 'See the names of both players' do
  scenario 'to be able to see the names which were typed into the form' do
    visit '/'
    fill_in 'player_1', with: 'name1'
    fill_in 'player_2', with: 'name2'
    click_button 'Submit'
    expect(page.has_content?('name1 Vs. name2')).to eq true
  end
end

  feature 'See opponents health' do
    scenario 'to be able to see how much health the opponent has left' do
      visit '/'
      fill_in 'player_1', with: 'name1'
      fill_in 'player_2', with: 'name2'
      click_button 'Submit'
      expect(page.has_content?('name1 health: 100HP')).to eq true
      expect(page.has_content?('name2 health: 100HP')).to eq true
    end
  end
