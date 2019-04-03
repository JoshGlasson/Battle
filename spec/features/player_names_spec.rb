feature 'Enter Players Names' do
  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content 'Josh vs. Sam'
  end
end
