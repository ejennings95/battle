feature 'See the names of both players' do
  scenario 'to be able to see the names which were typed into the form' do
    sign_in_and_play
    expect(page).to have_content 'name1 Vs. name2' 
  end
end

  feature 'See opponents health' do
    scenario 'to be able to see how much health the opponent has left' do
      sign_in_and_play
      expect(page).to have_content 'name1 health: 100HP'
      expect(page).to have_content 'name2 health: 100HP'
    end
  end
