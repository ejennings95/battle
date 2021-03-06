feature 'See the names of both players' do
  scenario 'to be able to see the names which were typed into the form' do
    sign_in_and_play
    expect(page).to have_content 'Name1 Vs. Name2'
  end
end

feature 'See my health' do
  scenario 'to be able to see how much health I have left' do
    sign_in_and_play
    expect(page).to have_content 'Name1 health: 100HP'
  end
end

  feature 'See opponents health' do
    scenario 'to be able to see how much health the opponent has left' do
      sign_in_and_play
      expect(page).to have_content 'Name2 health: 100HP'
    end
  end

  feature 'confirmation of attack on player2' do
    scenario 'to be able to see a message that I have attacked my opponent' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Name2 health: 90HP'
    end
  end

  feature 'confirmation of attack on player1' do
    scenario 'to be able to see a message that I have attacked my opponent' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Attack'
      expect(page).to have_content 'Name1 health: 90HP'
    end
  end

  feature 'it should take turns whos turn it is' do
    scenario 'player one should go first' do
      sign_in_and_play
      expect(page).to have_content 'Name1 to go'
    end
  end

  feature 'it should take turns whos turn it is' do
    scenario 'player two should go second' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Name2 to go'
    end
  end
  # feature 'confirmation of attack' do
  #   scenario 'to be able to see a message that I have attacked my opponent' do
  #     sign_in_and_play
  #     click_button 'Reset'
  #     expect(page).to have_content 'Name2 health: 100HP'
  #   end
  # end
