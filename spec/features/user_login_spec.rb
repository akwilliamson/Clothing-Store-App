require 'spec_helper'

describe User do
  context 'logging in' do
    it 'logs in a user' do
      visit root_path
      click_link 'Log In'
      within(".employee-login") do
        fill_in "name", with: "Jo"
        fill_in "password", with: '2'
        click_button 'Log In'
      end
      save_and_open_page
      page.should have_content 'HI'
    end
  end
end
