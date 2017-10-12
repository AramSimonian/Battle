feature 'View hit points' do
  scenario 'Player 1 can view player 2s hit points' do
    visit('/')
    fill_in(:player_1_name, with: 'Bob')
    fill_in(:player_2_name, with: 'Kate')
    click_button('Submit')
    expect(page).to have_content 'Kate: 100 HP'
  end
end
