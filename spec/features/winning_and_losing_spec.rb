feature 'Find winner of game' do
  scenario 'alert us when a player is dead' do
    19.times do
      click_button('Attack')
    end

    expect(page).to have_content "You've won the game"
  end
end
