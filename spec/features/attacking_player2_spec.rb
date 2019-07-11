feature 'attacking players' do
  scenario 'get confirmation after attacking player 2 that we have done 10hp damage' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Ryu attacked Ken")
    expect(page).to have_content("90HP")
  end
end
