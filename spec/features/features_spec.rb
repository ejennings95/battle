feature 'Infrastructure test' do
  scenario 'the hompage says Testing infrastructure working!' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
