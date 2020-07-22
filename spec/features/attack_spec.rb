feature 'attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Paul attacked Ralph'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Back to the scuffle!'
    expect(page).to have_content "Ralph: 90HP"
  end
end
