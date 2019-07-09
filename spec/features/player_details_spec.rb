feature 'Player details' do
  scenario 'expects players to submit names to screen' do
    visit('/')
    fill_in :player_1_name, with: "Ryu"
    fill_in :player_2_name, with: "Ken"
    click_button 'Submit'
    expect(page).to have_content 'Ryu vs. Ken'
  end
end
