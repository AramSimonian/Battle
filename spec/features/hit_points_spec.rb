feature 'Hit points' do
  scenario 'Player 1 can view player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Kate: 60 HP'
  end

  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bob attacks Kate'
  end

  scenario 'Player 1 attacks Player 2 and reduces their HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Kate now has 50 HP'
  end
end
