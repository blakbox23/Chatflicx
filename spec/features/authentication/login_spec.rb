require 'rails_helper'
describe 'login process', type: :feature do
  it 'signs user in' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'p@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    expect(current_path).to eql(root_path)
    expect(page).to have_text('Signed in successfully.')
  end

  it 'should not sign in if user is not valid' do
    visit '/users/sign_in'

    fill_in 'Email', with: 'peter@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    expect(page).to have_text('Invalid Email or password.')
  end
end
