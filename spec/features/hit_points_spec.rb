feature 'view hit points' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Ralph: 100HP"
  end

  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Paul: 100HP"
  end
end
