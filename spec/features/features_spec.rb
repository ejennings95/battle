# feature 'Infrastructure test' do
#   scenario 'the hompage says Testing infrastructure working!' do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end

feature 'Enter pair names' do
  scenario 'fill in two names in a form and see them on the screen' do
    visit '/'
    fill_in 'player_1', with: 'name1'
    fill_in 'player_2', with: 'name2'
    click_button 'Submit'
    expect(page).to have_content('name1 Vs. name2')
  end
end
