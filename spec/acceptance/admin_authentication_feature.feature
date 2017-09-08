require 'rails_helper'

RSpec.describe "the signin process", type: :feature do
  before :each do
    @user = create(:user, {
      email: 'user@example.com',
      password: 'password'
    })
  end

  context 'user enters valid credentials' do
    it "signs me in" do
      visit '/admin'

      within("#admin-sign-in") do
        fill_in 'Email', with: @user.email
        fill_in 'Password', with: @user.password
      end
      click_button 'Sign In'
      expect(page).to have_content 'Signed in successfully.'
    end
  end
end
