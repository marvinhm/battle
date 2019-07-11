feature 'attacking players' do
  scenario 'get confirmation after attacking player 2' do
    sign_in_and_play
    click_button('Attack')
  end
end
