feature 'Player details' do
  scenario 'expects players to submit names to screen' do
    sign_in_and_play
    expect(page).to have_content 'Ryu vs. Ken'
  end
end
