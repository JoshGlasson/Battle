feature 'Enter Players Names' do
  scenario 'Players enter their names' do
    visit('/')
    fill_in :player_1_name, with: "Josh"
    fill_in :player_2_name, with: "Sam"
    click_button 'Submit'
    expect(page).to have_content 'Josh vs. Sam'
  end
end
