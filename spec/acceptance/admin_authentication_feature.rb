# require 'rails_helper'

# feature "the signin process", type: :feature do
#   background do
#     @user = create(:user, {
#       email: 'user@example.com',
#       password: 'password'
#     })
#   end

#   scenario '' do
#     visit '/admin'

#     within("#admin-sign-in") do
#       fill_in 'Email', with: @user.email
#       fill_in 'Password', with: @user.password
#     end
#     click_button 'Sign In'
#     expect(page).to have_content 'Signed in successfully.'
#   end
# end
