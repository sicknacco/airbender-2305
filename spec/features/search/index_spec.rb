require 'rails_helper'

RSpec.describe 'Search Index Page' do
  describe 'As a user' do
    it 'I can search for members of a nation', :vcr do
      visit '/'

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('Total Members: 97')
    end
  end
end