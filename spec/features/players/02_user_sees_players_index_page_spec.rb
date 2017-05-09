require 'rails_helper'

feature 'user sees players index' do
  scenario 'user sees all players' do
    dave = FactoryGirl.build(:player)
    mike = FactoryGirl.build(:player, username: "mike", email: "mike@mike.com")
    jess = FactoryGirl.build(:player, username: "jess", email: "jess@jess.com")

    visit players_path

    expect(page).to have_content dave.username
    expect(page).to have_content mike.username
    expect(page).to have_content jess.username
  end
  scenario 'user sees players leaderboard' do
    visit players_path

    expect(page).to have_content dave.username
    expect(page).to have_content mike.username
    expect(page).to have_content jess.username
  end
end
