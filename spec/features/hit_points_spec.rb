feature 'Hit points' do
  scenario 'Player 1 can view player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Kate: 100 HP'
  end
end
