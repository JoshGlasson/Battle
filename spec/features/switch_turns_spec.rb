describe 'Switch turns' do
  feature 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Josh's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Josh's turn"
      expect(page).to have_content "Sam's turn"
    end
  end
end
