require 'rails_helper'

RSpec.describe 'user_index_path', type: :system do
  describe 'User_index_view' do
    before(:each) do
      @users = [User.create!(name: 'Tresor', photo: '#photo_amy', bio: 'bio', email: 'tresor@test.com', password: 'pswd123', posts_counter: 0),
                User.create!(name: 'James', photo: '#photo_james', bio: 'bio', email: 'james@test.com', password: 'pswd123', posts_counter: 10),
                User.create!(name: 'Joe', bio: 'bio', email: 'joekam@test.com', password: 'password', posts_counter: 21)]

      visit new_user_session_path

      fill_in 'user_email',	with: 'james@test.com'
      fill_in 'user_password',	with: 'password'
      click_button 'Log in'
    end

    after(:each) do
      User.destroy_all
    end

    it 'I can see the username of all other users.' do
      visit users_path

      @users.each do |u|
        expect(page).to have_content u.name
      end
    end

    it 'I can see the number of posts each user has written.' do
      visit users_path

      @users.each do |u|
        expect(page).to have_content('Number of posts:')

        expect(page).to have_content u.posts_counter
      end
    end

    it 'When I click on a user, I am redirected to that user s show page.' do
      visit users_path
      click_link @users[0].name
      expect(page).to have_content 'See All Posts'
    end
  end
end
