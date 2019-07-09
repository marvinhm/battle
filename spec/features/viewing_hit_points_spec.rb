feature 'View hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Ryu'
    fill_in :player_2_name, with: 'Ken'
    click_button 'Submit'
    expect(page).to have_content 'Ken: 100HP'
  end
end
