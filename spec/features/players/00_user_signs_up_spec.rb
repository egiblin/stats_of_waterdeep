require 'rails_helper'

feature 'sign up' do
player = FactoryGirl.create(:player)
  scenario 'with valid information' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Email', with: player.email
    fill_in 'Username', with: player.username
    fill_in 'player_password', with: player.password
    fill_in 'Password confirmation', with: player.password
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_content('Logout')
  end

  scenario 'with missing information' do
    visit root_path
    click_link 'Sign up'
    click_button 'Sign up'
    expect(page).to have_content("can't be blank")
  end

  scenario 'with a conflicting password confirmation' do
    visit root_path
    click_link 'Sign up'
    fill_in 'player_password', with: player.password
    fill_in 'Password confirmation', with: 'something different'
    click_button 'Sign up'
    expect(page).to have_content("doesn't match")
  end
end
