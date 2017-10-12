feature 'Enter names' do
  scenario 'Players can fill in their names' do
    visit('/')
    fill_in(:player_1_name, with: 'Bob')
    fill_in(:player_2_name, with: 'Kate')
    click_button('Submit')
    expect(page).to have_content 'Bob vs Kate'
  end
end
