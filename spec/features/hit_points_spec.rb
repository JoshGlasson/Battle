feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit ('/')
    fill_in :player_1_name, with: "Josh"
    fill_in :player_2_name, with: "Sam"
    click_button 'Submit'
    expect(page).to have_content 'Sam: 60HP'
  end
end
