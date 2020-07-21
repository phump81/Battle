feature 'getting player names' do
  scenario 'player fills in form, submits and player name is displayed on screen' do
    sign_in_and_play
    expect(page).to have_content 'Paul vs. Ralph'
  end
end
