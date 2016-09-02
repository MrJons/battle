require 'spec_helper'

feature 'Switching turns between player 1 and 2' do

  scenario 'player has just finished attacking player 2' do
    sign_in_and_play
    click_link('Attack')
    click_link('Change Turns')
    expect(page).to have_content("It is now Mertz's turn.")
  end
end
