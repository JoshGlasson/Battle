feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Josh attacked Sam'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "Sam: 60HP"
    expect(page).to have_content "Sam: 50HP"
  end

    scenario 'reduce Player 1 HP by 10' do
      sign_in_and_play
      click_button "Attack"
      click_button "OK"
      click_button "Attack"
      click_button "OK"
      expect(page).not_to have_content "Josh: 60HP"
      expect(page).to have_content "Josh: 50HP"
    end

  scenario 'can be attacked by player 2' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    expect(page).to have_content 'Sam attacked Josh'
  end
end
